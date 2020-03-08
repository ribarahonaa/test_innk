class CreateArriendos < ActiveRecord::Migration[5.2]
  def change
    create_table :arriendos do |t|
      t.string :kind
      t.references :users, foreign_key: true
      t.references :films, foreign_key: true
      t.references :series, foreign_key: true

      t.timestamps
    end
  end
end
