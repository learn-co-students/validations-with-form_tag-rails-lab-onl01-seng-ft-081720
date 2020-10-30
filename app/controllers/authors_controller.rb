class AuthorsController < ApplicationController
  def show
    @author
  end

  def new
    @author = Author.new
  end

  def edit 
  end 

  def create
    @author = Author.create(author_params)
      if !@author.valid? 
        render :new
      else 
        redirect_to author_path(@author)
      end 
  end

  def update
  end 


  private

  def set_author
    @author = Author.find_by_id(params[:id])
  end 

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
