class CategoriesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    if @post.categories.find_by(category_params) == nil
      @category = @post.categories.create(category_params)
      @category.save
    end
    
    redirect_to :controller => "posts", :action => "edit",:id => params[:post_id]
  end
  
  private
    def category_params
      params.require(:category).permit(:name)
    end
end
