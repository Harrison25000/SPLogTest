# frozen_string_literal: true

# top line comment
class Logreader
  attr_accessor :logs

  def initialize
    @logs = []
  end

  def seperatelogs
    File.open('lib/webserver.log', 'r').each do |line|
      @logs.push(line.split(' '))
    end
  end
end
