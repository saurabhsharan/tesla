== README

To run locally:

1. Copy 2016_Likely_Voters.csv to lib/tasks/
2. Run `rake db:migrate` to initialize database
3. Run `rake voters:import_csv[X]`, where `X` is the number of voters to import into database
  * Example: `rake voters:import_csv[50]` to import 50 voters
  * Run `rake voters:import_csv` without any number to import entire CSV file (caution: will take extremely long time)
4. Run `rails s` to start local server
