# frozen_string_literal: true

require 'display_results.rb'

describe Display do
  it 'sends results to the csv file.' do
    display = Display.new
    display.store_csv_file
    # checking that the results are being pushed to the new csv file.
    expect(display.count).to eq(12)
    expect(display.counter).to eq(12)
  end

  it 'checks the csv file for the results' do
    array = []
    display = Display.new
    display.store_csv_file
    File.open('log_results.csv', 'r').each do |line|
      array.push(line)
    end
    expect(array[0]).to include('/about/2 - total page views: 90')
  end
end
