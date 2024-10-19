class CreateArtists < ActiveRecord::Migration[7.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :country

      t.timestamps
    end
  end
end
