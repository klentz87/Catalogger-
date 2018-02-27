class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  
  require 'googlebooks'


  include ApplicationHelper

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  def books_by_genre
    @books = Book.where(genre_id: params[:genre_id])
    @genre = Genre.find(params[:genre_id])
  end

  def books_by_title
    books = Book.all
    @books = books.order(title: :asc)
    
  end

  def home
  end

  def create_book

  end


  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
    @genres = Genre.all

    books = GoogleBooks.search(params[:isbn])
    @first_book = books.first

  end

  # GET /books/1/edit
  def edit
    @genres = Genre.all
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:isbn, :title, :author, :publisher, :publication_date, :format, :location, :note, :collectible, :price, :genre_id, :image)
    end
end
