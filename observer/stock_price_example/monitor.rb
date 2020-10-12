# frozen_string_literal: true

class Monitor
  def initialize(stock)
    stock.add_observer(self)
  end
end
