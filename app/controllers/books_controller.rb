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
    else
      render :new
    end
  end

  def update
    @book.update(book_params)
    if @book.save
     @book
    end
  end


  def index
    if params[:json]
      render :json => Book.all
    else
      @books = Book.all
    end
  end

  def show
    if params[:json]
      render :json => @book
    else
      @book
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :release_date, :base_price, :format_id)
  end

  def find_book
    @book = Book.find(params[:id])
  end


end
