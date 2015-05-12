To run locally:

1. Copy 2016_Likely_Voters.csv to lib/tasks/
2. Run `rake db:create` to create the database
3. Run `rake db:migrate` to initialize database
4. Run `rake voters:import_csv[X]`, where `X` is the number of voters to import into database
  * Example: `rake voters:import_csv[50]` to import 50 voters
  * Run `rake voters:import_csv` without any number to import entire CSV file (caution: will take extremely long time)
5. Run `rails s` to start local server

TODO

* Be able to specify how many existing/new voters should be assigned to contractor
* Be able to add/remove voters to contractor after contractor has been created
* Download CSV data file
* Let admins resolve email address conflicts
* Improve UI for contractors to input emails, e.g. auto-save
