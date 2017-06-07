class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone
      t.integer :age
      t.string :gender
      t.string :marital_status
      t.string :education_level
      t.integer :credit_score
      t.string :profession
      t.integer :income
      t.string :country
      t.string :residential_status
      t.integer :household_size

      t.timestamps
    end
  end
end
