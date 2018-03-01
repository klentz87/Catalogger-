class AddColumnPublicationDateAsInteger < ActiveRecord::Migration[5.1]
  def change
  	add_column :books, :publication_date, :integer
  end
end
