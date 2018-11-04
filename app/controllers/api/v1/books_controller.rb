class Api::V1::BooksController < ApplicationController
  before_action :find_book, only: [:show, :update]

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book, status: :accepted
    else
      render json: {errors: @book.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    @book.update(book_params)
    if @book.save
      render json: @book, status: :accepted
    else
      render json: {errors: @book.errors.full_messages}, status: :unprocessible_entity
    end
  end


  def index
    @books = Book.all
    render json: @books
  end

  def show
    @book
    render json: @book
  end


  private

  def book_params
    params.permit(:title, :release_date, :base_price)
  end

  def find_book
    @book = Book.find(params[:id])
  end
end
