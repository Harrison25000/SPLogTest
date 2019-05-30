# frozen_string_literal: true

require 'Log_info.rb'

describe Loginformation do
  it 'returns page and (positioned adjacent) views for each page' do
    # expect page_views method to return url
    # along with page views count
    loginfo = Loginformation.new
    expect(loginfo.page_views).to include(90, 89, 82, 81, 80, 78)
    expect(loginfo.page_views).to include('/about/2', '/contact', '/index')
    expect(loginfo.page_views).to include('/about', '/help_page/1', '/home')
  end

  it 'returns page and unique views for each page' do
    loginfo = Loginformation.new
    expect(loginfo.uq_page_views).to include(23, 23, 23, 23, 22, 21)
    expect(loginfo.uq_page_views).to include('/about/2', '/contact', '/index')
    expect(loginfo.uq_page_views).to include('/about', '/help_page/1', '/home')
  end
end
