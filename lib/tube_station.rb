
class Station

  def initialize(station_info) 
    @station_info = station_info  
  end

  def station 
    @station_info[:name]
  end

  def zone 
    @station_info[:zone]
  end
end
