module ApplicationHelper
	
	def genre_finder
		if @genres
			@genres.collect { |g| [ g.name, g.id ] }
		else
			nil
		end
	end

	def genre_display_on_show_page
		if Genre.find_by(id:@book.genre_id) 
           	Genre.find_by(id:@book.genre_id).name
        else
           	nil
        end
    end

    def genre_display_on_index_page(book)
    	if Genre.find_by(id: book.genre_id)
    		Genre.find_by(id: book.genre_id).name
    	else
    		"" # in the modal, nil will return the path
    	end
    end

# everything below is so that the form will still display even if you can't get an isbn to start with

    def google_isbn
        if @first_book
            @first_book.isbn
        else
            nil
        end
    end

    def google_title
        if @first_book
            @first_book.title
        else
            nil
        end
    end

    def google_authors
        if @first_book
            @first_book.authors
        else
            nil
        end
    end

    def google_publisher
        if @first_book
            @first_book.publisher
        else
            nil
        end
    end

    def google_year
        if @first_book
            @first_book.published_date[0..3]
        else
            nil
        end
    end

    def google_image
        if @first_book
            @first_book.image_link(:zoom => 2) # medium
        else
            nil
        end
    end


end
