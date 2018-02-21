json.extract! book, :id, :isbn, :title, :author, :publisher, :publication_date, :format, :location, :note, :collectible, :price, :genre_id, :created_at, :updated_at
json.url book_url(book, format: :json)
