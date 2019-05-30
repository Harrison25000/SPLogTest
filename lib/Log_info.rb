# frozen_string_literal: true

require 'Log_reader.rb'

# top line comment
class Loginformation
  def page_views
    logreader = Logreader.new
    logreader.seperatelogs
    logreader.logs[0][0]
  end
end
