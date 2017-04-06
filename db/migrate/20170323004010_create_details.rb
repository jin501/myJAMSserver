class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.string :type
      t.string :content

      t.timestamps
    end
  end
end
