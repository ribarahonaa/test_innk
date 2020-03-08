class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.string :gender
      t.integer :price
      t.string :duration

      t.timestamps
    end
  end
end
