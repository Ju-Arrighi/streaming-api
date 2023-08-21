class LibrariesController < ApplicationController
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
end
