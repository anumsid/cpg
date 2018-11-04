class Api::V1::FormatsController < ApplicationController
  before_action :find_format, only: [:show, :update]


  def create
    @format = Format.new(format_params)
    if @format.save
      render json: @format, status: :accepted
    else
      render json: {errors: @format.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    @format.update(format_params)
    if @format.save
      render json: @format, status: :accepted
    else
      render json: {errors: @format.errors.full_messages}, status: :unprocessible_entity
    end
  end


  def index
    @formats = Format.all
    render json: @formats
  end

  def show
    @format
    render json: @format
  end


  private

  def format_params
    params.permit(:name)
  end

  def find_format
    @format = Format.find(params[:id])
  end
end
