class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.string :publisher
      t.date :publication_date
      t.string :format
      t.string :location
      t.text :note
      t.boolean :collectible
      t.decimal :price
      t.integer :genre_id

      t.timestamps
    end
  end
end
