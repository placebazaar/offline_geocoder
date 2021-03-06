require 'spec_helper'

describe OfflineGeocoder do
  it 'has a version number' do
    expect(OfflineGeocoder::VERSION).not_to be nil
  end

  it 'returns correct results' do
    geocoder = OfflineGeocoder.new
    result = geocoder.search(43.26, -2.92)
    expect(result).to eq({lat: 43.26271,
                          lon: -2.92528,
                          name: "Bilbao",
                          admin1: "Basque Country",
                          admin2: "Bizkaia",
                          cc: "ES",
                          country: "Spain"
                         })
  end

  it 'accepts strings as a parameter' do
    geocoder = OfflineGeocoder.new
    result = geocoder.search("43.26", "-2.92")
    expect(result).to eq({lat: 43.26271,
                          lon: -2.92528,
                          name: "Bilbao",
                          admin1: "Basque Country",
                          admin2: "Bizkaia",
                          cc: "ES",
                          country: "Spain"
                         })
  end
end
