class RemoveColumnPublicationDate < ActiveRecord::Migration[5.1]
  def change
  	remove_column :books, :publication_date
  end
end
