class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end
  
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new
    if @blog.save
      redirect_to blogs_path, notice: "Blog Created"
    else 
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "Blog Updated"
    else
      render :edit
    end
  end

  def destroy
    if @blog.destroy
      redirect_to blogs_path, notice: "Blog has been deleted"
    end
  end

  private 
  
  def blog_params
    params.require(:blog).permit(:title, :author, :body)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
