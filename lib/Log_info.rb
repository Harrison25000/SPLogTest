# frozen_string_literal: true

require 'Log_reader.rb'

# top line comment
class Loginformation
  def page_views
    logreader = Logreader.new
    logreader.seperatelogs
    logarray = logreader.logs
    viewsperpage = logarray.group_by(&:first).map { |url, ip| [url, ip.count] }
    viewsperpage.sort_by { |_a, b| -b }.flatten
  end
end
