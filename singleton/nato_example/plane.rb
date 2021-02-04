class Plane
  def initialize(id)
    @id = id
    @comm = AirTrafficCommunication.new
  end

  def identify
    @comm.identify_aircraft(@id)
  end
end
