class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      # Headers from CSV
      t.string :lVoterUniqueID, :sAffNumber, :szStateVoterID, :sVoterTitle, :szNameLast, :szNameFirst, :szNameMiddle, :sNameSuffix, :sGender, :szSitusAddress, :szSitusCity, :sSitusState, :sSitusZip, :sHouseNum, :sUnitAbbr, :sUnitNum, :szStreetName, :sStreetSuffix, :sPreDir, :sPostDir, :szMailAddress1, :szMailAddress2, :szMailAddress3, :szMailAddress4, :szMailZip, :szPhone, :szEmailAddress, :dtBirthDate, :sBirthPlace, :dtRegDate, :dtOrigRegDate, :dtLastUpdate_dt
      t.timestamps null: false
    end
  end
end
