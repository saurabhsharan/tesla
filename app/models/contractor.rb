class Contractor < ActiveRecord::Base
  validates :email, uniqueness: true
end
