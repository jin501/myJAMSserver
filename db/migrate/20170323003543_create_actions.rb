class CreateActions < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.string :event
      t.integer :company_id
      t.integer :contact_id
      t.integer :detail_id
      t.timestamps :created_at
      t.timestamps :updated_at
      t.timestamps
    end
  end
end
