require './lib/tube_station'

describe Station do


  it 'knows its name' do
    station_hash = {name: "St Pauls", zone: 1}
    station = Station.new (station_hash)
    expect(station.station).to eq "St Pauls"
  end

  it 'knows its name' do
    station_hash = {name: "St Pauls", zone: 1}
    station = Station.new (station_hash)
    expect(station.zone).to eq 1
  end


end
