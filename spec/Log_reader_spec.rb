# frozen_string_literal: true

require 'Log_reader.rb'

describe Logreader do
  it 'can read the webserver.log file' do
    # expecting the readlogs method to return text,
    # including the first line of the webserver.log file
    expect(Logreader.new.readlogs).to include('/help_page/1 126.318.035.038')
  end
end
