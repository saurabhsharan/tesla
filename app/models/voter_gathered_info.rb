class VoterGatheredInfo < ActiveRecord::Base
  belongs_to :contractor
  belongs_to :voter
end
