# frozen_string_literal: true

require 'Log_info.rb'

describe Loginformation do
  it 'filters through the Log info provided by Log_reader' do
    # expect page_views method to return url
    # along with page views count

    loginfo = Loginformation.new
    expect(loginfo.page_views).to include('/about/2', '/contact', '/index')
    expect(loginfo.page_views).to include('/about', '/help_page/1', '/home')
    expect(loginfo.page_views).to include(90, 89, 82, 81, 80, 78)
  end
end
