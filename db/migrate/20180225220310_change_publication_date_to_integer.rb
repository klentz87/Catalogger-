class ChangePublicationDateToInteger < ActiveRecord::Migration[5.1]
  def change
  	change_column :books, :publication_date, :integer
  end
end
