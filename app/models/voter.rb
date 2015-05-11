class Voter < ActiveRecord::Base
  has_many :voter_gathered_infos
  has_many :contractors, through: :voter_gathered_infos
  
  def full_name
    self.szNameFirst + " " + self.szNameLast
  end
  
  def address
    self.szSitusAddress + ", " + self.szSitusCity + ", " + self.sSitusState + " " + self.sSitusZip
  end
end
