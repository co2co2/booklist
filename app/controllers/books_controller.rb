class BooksController < ApplicationController
  def index
    @book = Book.all

    respond_to do |format|
      format.html
      # format.text
      # format.json do
      #   render json: @books.map do |book|
      #     {
      #       full_name: book.name,
      #       location: book.home,
      #       creepiness: book.creepiness
      #     }
      #   end
      end
    end
end
