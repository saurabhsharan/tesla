class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :full_name
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
