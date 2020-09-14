class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find params[:id]
  end

  def edit
    @author = Author.find params[:id]
  end

  def update
    @author = Author.find params[:id]
    @author.assign_attributes(author_params)

    if @author.save
      redirect_to @author
    else
      render 'edit'
    end
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :country, :genre)
  end
end