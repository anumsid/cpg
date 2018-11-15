class BooksController < ApplicationController
  before_action :find_book, only: [:show, :update]

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.authors << Author.where(id: params[:authors_ids])
    if @book.save
      if request.headers["Content-Type"] == "application/json"
        render :json => @book, :include => :authors
      else
        redirect_to :action => "index"
     end
    else
      render :new
    end
  end

  def update
    @book.update(book_params)
    @book.authors = Author.where(id: params[:authors_ids])
    if @book.save
     redirect_to :action => "show", :id => @book.id
    end
  end

  def edit
    @book = find_book
  end


  def index
    @books = Book.all
    respond_to do |format|
      format.html
      format.json { render json: @books, include: :authors }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @book, include: :authors }
    end
  end

  def report
    @books = Book.where('release_date LIKE ?', '%2018%').where(:format_id => 1)
  end

  private

  def book_params
    params.require(:book).permit(:title, :release_date, :base_price, :format_id)
  end

  def find_book
    @book = Book.find(params[:id])
  end


end
