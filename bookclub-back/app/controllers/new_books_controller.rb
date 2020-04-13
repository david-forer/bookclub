class NewBooksController < ApplicationController

    def index 
        new_books = NewBook.all 
        render json: new_books
    end
end
