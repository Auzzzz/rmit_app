class CategoriesController < ApplicationController
  
  def new
    @category = Category.new
  end
  
  def index
    @category = Category.all
  end
  
  def edit
    @category =Category.find(params[:id])
  end

  def show
    @category = Category.find(params[:id])
  end


  def create
    new_category = params.require(:category).permit(:name)
    @category = Category.new(new_category)
    
    
  if @category.save
      flash[:success] = "Category Made Successfully - #{@category.name}"
      redirect_to @category
  else
      render 'new'
  end
  end
 
end