class CreateShoes < ActiveRecord::Migration[8.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :manufacturer
      t.integer :size

      t.timestamps
    end
  end
end
