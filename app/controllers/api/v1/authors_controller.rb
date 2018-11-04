class Api::V1::AuthorsController < ApplicationController
  before_action :find_author, only: [:show, :update]


  def create
    @author = Author.new(author_params)
    if @author.save
      render json: @author, status: :accepted
    else
      render json: {errors: @author.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    @author.update(author_params)
    if @author.save
      render json: @author, status: :accepted
    else
      render json: {errors: @author.errors.full_messages}, status: :unprocessible_entity
    end
  end


  def index
    @authors = Author.all
    render json: @authors
  end

  def show
    @author
    render json: @author
  end


  private

  def author_params
    params.permit(:first_name, :last_name)
  end

  def find_author
    @author = Author.find(params[:id])
  end
end
