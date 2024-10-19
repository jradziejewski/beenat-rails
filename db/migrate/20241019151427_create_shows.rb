class CreateShows < ActiveRecord::Migration[7.2]
  def change
    create_table :shows do |t|
      t.string :venue
      t.string :city
      t.date :date
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
