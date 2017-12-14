class BooksController < ApplicationController
  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.text

      format.csv { render plain: Book.generate_csv(@books) }
      format.json do
          render json: @books.map do |book|
          {
            title: book.name,
            author: book.home,
            already_read: book.already_read
          }
          end
      end
    end
  end
end
