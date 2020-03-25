require './lib/tube_station'

describe Station do

  subject {Station.new(name: "Old Street", zone: 1)}

  it 'knows its name' do
    expect(subject.name).to eq("Old Street")
  end

  it 'knows its zone' do
    expect(subject.zone).to eq(1)
  end
end
