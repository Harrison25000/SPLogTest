# SPLogTest

A Ruby (2.6.0) programme that reads through and sorts a logfile, which then displays information of how many views (in total and unique) each site has had in a csv file.

I chose to display the information within a csv file as it is better for storing large volumes of data and can be used for making spreadsheets meaning the data is much easier to handle. For the purpose of this test I also display the results within the console as they are not that large.

## Testing:
- Rspec
- Rubocop
- Simplecov - (test coverage 100%)
- IRB

##How to run:
- in console type: irb
- within IRB type: require_relative "lib/Display_results"
                   Display.new.store_csv_file

  (This should display the total page views and the unique page views in the console.)

- A csv file should be created called 'log_results.csv' which will also have the  stored page view information.
