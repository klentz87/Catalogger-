class CreateBookHashtags < ActiveRecord::Migration[5.1]
  def change
    create_table :book_hashtags do |t|
      t.integer :book_id
      t.integer :hashtag_id

      t.timestamps
    end
  end
end
