# frozen_string_literal: true

# The Component is the common base class & provides the interface.
class DescriptionIterator
  def initialize(collection)
    @collection = collection
  end

  def service_summary(item = @collection, list = [])
    list << "\e[36m#{item.name}\e[0m" unless item.sub_services
    return list if item.sub_services.nil?

    item.sub_services.each do |service|
      service_summary(service, list)
    end
    list
  end
end

# rename to be something for employees?
class TimeList < DescriptionIterator
  def service_summary(item = @collection, list = [])
    unless item.sub_services
      list << "\e[36m#{item.name} takes #{item.total_time.to_i} minutes.\e[0m"
    end
    return list if item.sub_services.nil?

    item.sub_services.each do |service|
      service_summary(service, list)
    end
    list
  end
end
