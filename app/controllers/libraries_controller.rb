class LibrariesController < ApplicationController
  before_action :set_library, only: %i[ show update destroy ]
  def index
    @libraries = Library.all

    render json: @libraries
  end

  def show
    render json: @library, include: [:user_id]
    # binding.break
  end

  private

  def library_params
    params.require(:library).permit(:user_id)
  end

  def set_contact
    @library = Library.find(params[:id])
  end
end
