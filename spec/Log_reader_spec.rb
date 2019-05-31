# frozen_string_literal: true

require 'log_reader.rb'

describe Logreader do
  it 'seperates each line and pushes them into an array' do
    # expecting the seperatelogs method to push each line into an array
    # (seperating each line into the web page and the IP address)
    logreader = Logreader.new
    logreader.seperatelogs
    expect(logreader.logs[0][0]).to include('/help_page/1')
    expect(logreader.logs[0][1]).to include('126.318.035.038')
  end
end
