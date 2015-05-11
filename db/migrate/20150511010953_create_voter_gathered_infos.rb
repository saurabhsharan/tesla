class CreateVoterGatheredInfos < ActiveRecord::Migration
  def change
    create_table :voter_gathered_infos do |t|
      t.integer :voter_id
      t.integer :contractor_id
      t.string :email

      t.timestamps null: false
    end
  end
end
