class Plane
  def initialize(id)
    @id = id
    @comm = AirTrafficComm.new
  end

  def identify
    @comm.identify_aircraft(@id)
  end
end
