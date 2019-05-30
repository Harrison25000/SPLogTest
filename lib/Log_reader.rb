# frozen_string_literal: true

# top line comment
class Logreader
  def readlogs
    File.open('lib/webserver.log', 'r').each do |line|
      return line
    end
  end
end
