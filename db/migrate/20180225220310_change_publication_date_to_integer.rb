class ChangePublicationDateToInteger < ActiveRecord::Migration[5.1]
  def change
  	change_column :books, :publication_date, 'integer USING CAST(publication_date AS integer)'
  end
end
