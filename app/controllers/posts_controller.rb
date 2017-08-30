class PostsController < ApplicationController
  def list
    @allpost = Post.all
  end

  def new
  end

  def create
    @board_create = Post.new
    @board_create.title = params[:my_title]
    @board_create.content = params[:my_content]
    @board_create.save
    
    redirect_to '/posts/list'
  end



  def show
    @findpost = Post.find(params[:post_id])
  end

  def eidt
    @edit_post = Post.find(params[:post_id])
  end

  def update
    @update_post = Post.find(params[:post_id])
    @update_post.title = params[:my_title]
    @update_post.content = params[:my_content]
    @update_post.save
    
    redirect_to "/posts/list"
  end

  def delete
    @delete_post = Post.find(params[:post_id])
    @delete_post.destroy
    redirect_to "/posts/list"
  end
end
