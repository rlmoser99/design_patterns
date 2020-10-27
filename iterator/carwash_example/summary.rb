# frozen_string_literal: true

# An example of an Iterator Class
class Summary
  def initialize(collection)
    @collection = collection
  end

  def create_list(item = @collection, list = [])
    list_item = "\e[36m#{item.name}\e[0m"
    list << list_item unless item.sub_services
    return list if item.sub_services.nil?

    item.sub_services.each do |service|
      create_list(service, list)
    end
    list
  end
end

class TimeSummary < Summary
  def create_list(item = @collection, list = [])
    list_item = "\e[94m#{item.name} takes #{item.total_time.to_i} minutes\e[0m"
    list << list_item unless item.sub_services
    return list if item.sub_services.nil?

    item.sub_services.each do |service|
      create_list(service, list)
    end
    list << overall_time_total(item) if item.parent.nil?
    list
  end

  def overall_time_total(item)
    "\e[94mTOTAL TIME: #{item.total_time.to_i} MINUTES\e[0m"
  end
end
