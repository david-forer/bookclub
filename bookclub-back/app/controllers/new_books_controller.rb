class NewBooksController < ApplicationController
    before_action :set_newbook, only: [:show, :update, :destroy, ]

    def index 
        @newbooks = NewBook.all 
        render json: @newbooks
    end

    def show 
        render json: @newbook
    end

    def create
        @new_book = NewBook.new(newbook_params)

        if @new_book.save
        render json: @new_book, status: :created, location: @new_book
        else
        render json: @new_book.errors, status: :unprocessable_entity
        end
    end

    private

     # Use callbacks to share common setup or constraints between actions.
    def set_newbook
      @newbook = NewBook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def newbook_params
      params.require(:newbook).permit(:title, :author, :genre, :link)
    end


end
