# frozen_string_literal: true

require 'Log_reader.rb'

# top line comment
class Loginformation
  def page_views
    accessing_logs
    all_views = @logarray.group_by(&:first).map { |url, ip| [url, ip.count] }
    all_views.sort_by { |_a, b| -b }.flatten
  end

  def uq_page_views
    accessing_logs
    uq_view = @logarray.group_by(&:first).map { |url, ip| [url, ip.uniq.count] }
    uq_view.sort_by { |_a, b| -b }.flatten
  end

  private

  def accessing_logs
    @logread = Logreader.new
    @logread.seperatelogs
    @logarray = @logread.logs
  end
end
