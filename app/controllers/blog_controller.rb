class BlogController < ApplicationController
  def intro
  end
  def new
  end
  
  def write
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    redirect_to '/'
  end
  
  def list
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:title], content: params[:content])
    redirect_to '/blog/show/' + @post.id.to_s
  end
end
