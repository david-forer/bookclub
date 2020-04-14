class NewBooksController < ApplicationController
    before_action :set_newbook, only: [:show, :update, :destroy]

    def index 
        @newbooks = NewBook.all 
        render json: @newbooks
    end

    def show 
        render json: @newbook
    end

    private

     # Use callbacks to share common setup or constraints between actions.
    def set_newbook
      @newbook = NewBook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def todo_params
      params.require(:todo).permit(:task)
    end


end
