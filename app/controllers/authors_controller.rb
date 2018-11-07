class AuthorsController < ApplicationController
  before_action :find_author, only: [:show, :update]

  def new
    @author
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      @author
    end
  end

  def update
    @author.update(author_params)
    if @author.save
     @author
    end
  end


  def index
    @authors = Author.all
  end

  def show
    @author
  end


  private

  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end

  def find_author
    @author = Author.find(params[:id])
  end
end
