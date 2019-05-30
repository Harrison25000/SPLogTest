# frozen_string_literal: true

require 'Display_results.rb'

describe Display do
  it 'reads the file' do
    # checking the file exists and can be read
    expect(Display.new.test).to eq('FOUND')
  end
end
