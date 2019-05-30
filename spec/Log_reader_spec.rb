# frozen_string_literal: true

require 'Log_reader.rb'

describe Logreader do
  it 'can read the webserver.log file' do
    # expecting the readlogs method to return text,
    # including the first line of the webserver.log file
    expect(Logreader.new.readlogs).to include('/help_page/1 126.318.035.038')
  end

  it 'seperates each line and pushes them into an array' do
    # expecting the seperatelogs method to push each line into an array
    # (seperating each line into the web page and the IP address)
    logreader = Logreader.new
    logreader.seperatelogs
    expect(logreader.logs[0][0]).to include('/help_page/1')
    expect(logreader.logs[0][1]).to include('126.318.035.038')
  end
end
