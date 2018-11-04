class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :release_date
      t.string :base_price

      t.timestamps
    end
  end
end
