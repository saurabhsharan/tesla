require 'csv'

namespace :voters do
  # Run with `rake import_voters_csv`
  # This command is 'safe' to run multiple times since it doesn't delete/overwrite any data that contractors have entered in (since that data is stored in another table alltogether)
  task :import_csv, [:count]  => [:environment] do |t, args|
    unless File.exist?('lib/tasks/2016_Likely_Voters.csv')
      puts "ERROR: Could not find 2016_Likely_Voters.csv in lib/tasks - remember that this file is NOT checked into version control, so you will have to manually copy the file yourself"
      next # breaks out of current task do/end block
    end

    voters_csv_file = File.open('lib/tasks/2016_Likely_Voters.csv', 'r:ISO-8859-1')
    voters_csv = CSV.parse(voters_csv_file, headers: true)

    count = 0
    max_voter_count = args[:count].to_i || Float::INFINITY

    voters_csv.each do |row|
      Voter.create!(row.to_hash)

      count += 1
      if count >= max_voter_count
        break
      end
    end
  end
end
