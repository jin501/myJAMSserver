class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :company_id
      t.integer :phone_number

      t.timestamps
    end
  end
end
