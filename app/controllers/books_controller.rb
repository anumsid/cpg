class BooksController < ApplicationController
  before_action :find_book, only: [:show, :update]

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.authors << Author.where(id: params[:authors_ids])
    if @book.save
       @book
    end
  end

  def update
    @book.update(book_params)
    if @book.save
     @book
    end
  end


  def index
    @books = Book.all
  end

  def show
    @book
  end

  private

  def book_params
    params.require(:book).permit(:title, :release_date, :base_price, :format_id)
  end

  def find_book
    @book = Book.find(params[:id])
  end


end
