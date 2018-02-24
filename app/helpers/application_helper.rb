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
    		nil
    	end

    end


end
