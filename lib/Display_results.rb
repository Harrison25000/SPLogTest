# frozen_string_literal: true

require_relative 'log_info'
require_relative 'log_reader'

# top line comment
class Display
  attr_reader :count, :counter

  def initialize
    @count = 0
    @counter = 0
  end

  def store_csv_file
    File.open('log_results.csv', 'w+') do |f|
      total_page_view_results.each do |element|
        if @count.even?
          f.print("#{element} - total page views: ")
          @count += 1
        else
          f.print("#{element} || ")
          @count += 1
        end
      end
      f.print("\n")
      uq_page_view_results.each do |element|
        if @counter.even?
          f.print("#{element} - unique page views: ")
          @counter += 1
        else
          f.print("#{element} || ")
          @counter += 1
        end
      end
      return "Total page views: #{total_page_view_results}
      Unique page views: #{uq_page_view_results}"
    end
  end

  private

  def total_page_view_results
    @logread = Logreader.new
    @logdata = Loginformation.new
    @logdata.page_views
  end

  def uq_page_view_results
    @logread = Logreader.new
    @logdata = Loginformation.new
    @logdata.uq_page_views
  end
end
