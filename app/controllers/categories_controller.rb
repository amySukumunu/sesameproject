class CategoriesController < ApplicationController
  def create
  		@category = current_user.categories.new(params[:category])
  		if @category.save 
  			flash[:success] = "Category created!"
  			redirect_to @user
   		else
  			flash[:error] = "Category not created."
  			render @user
  		end

  end

end
