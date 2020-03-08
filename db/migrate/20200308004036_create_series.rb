class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :title
      t.string :gender
      t.integer :price
      t.string :season

      t.timestamps
    end
  end
end
