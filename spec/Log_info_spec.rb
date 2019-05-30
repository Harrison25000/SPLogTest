# frozen_string_literal: true

require 'Log_info.rb'

describe Loginformation do
  it 'reads the file' do
    expect(Loginformation.new.test).to eq('FOUND')
  end
end
