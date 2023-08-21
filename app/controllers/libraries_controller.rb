class LibrariesController < ApplicationController
  before_action :set_library, only: %i[ show update destroy ]
  def index
    @libraries = Library.all

    render json: @libraries
  end

  def show
    render json: @library
  end

  private

  def library_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params)
  end

  def set_library
    @library = Library.find(params[:id])
  end
end
