class AddTagsToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :tags, :text
  end
end
