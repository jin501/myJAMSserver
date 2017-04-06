class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.integer :phone_number

      t.timestamps
    end
  end
end
