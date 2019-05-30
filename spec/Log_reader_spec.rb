# frozen_string_literal: true

require 'Log_reader.rb'

describe Logreader do
  it 'can find and read the Log_reader file' do
    expect(Logreader.new.test).to eq('FOUND')
  end
end
