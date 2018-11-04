class FormatsController < ApplicationController
  before_action :find_format, only: [:show, :update]

  def new
    @format
  end

  def create
    @format = Format.new(format_params)
    if @format.save
       @format
    end
  end

  def update
    @format.update(format_params)
    if @format.save
      @format
    end
  end


  def index
    @formats = Format.all
  end

  def show
    @format
  end


  private

  def format_params
    params.permit(:name)
  end

  def find_format
    @format = Format.find(params[:id])
  end
end
