class CreatePixels < ActiveRecord::Migration[6.1]
  def change
    create_table :pixels do |t|
      t.string :name
      t.integer :R
      t.integer :G
      t.integer :B

      t.timestamps
    end
  end
end
