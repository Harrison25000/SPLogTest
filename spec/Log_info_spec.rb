# frozen_string_literal: true

require 'Log_info.rb'

describe Loginformation do
  it 'can access information from Log_reader' do
    expect(Loginformation.new.page_views).to eq('/help_page/1')
  end
end
