# frozen_string_literal: true

require 'observer'

class Countdown
  include Observable

  attr_reader :starting_count

  def initialize(starting_count)
    @starting_count = starting_count
  end

  def run
    starting_count.downto(0) do |count|
      changed
      notify_observers count
    end
  end
end

class TerminalOutput
  def update(count)
    puts count
  end
end

class IgnitionControl
  attr_reader :ignite_at
  def initialize(ignite_at = 0)
    @ignite_at = ignite_at
  end

  def update(count)
    puts '!!! IGNITION !!!' if count == ignite_at
  end
end

class BlastOff
  def update(count)
    puts 'BLAST OFF' if count.zero?
  end
end

countdown = Countdown.new(5)
countdown.add_observer(TerminalOutput.new)
countdown.add_observer(IgnitionControl.new(3))
countdown.add_observer(BlastOff.new)
countdown.run
