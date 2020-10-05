# frozen_string_literal: true

class Monitor
  def initialize(stock, limit)
    @limit = limit
    stock.add_observer(self)
  end
end
