class Contractor < ActiveRecord::Base
  validates :email, uniqueness: true
  
  has_many :voter_gathered_infos
  has_many :voters, through: :voter_gathered_infos
end
