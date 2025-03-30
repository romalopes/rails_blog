class AdminController < ApplicationController
  def index
  end

  def posts
    @post = Post.includes(:user).all
  end

  def comments
  end

  def users
  end

  def show_post
    @post = Post.includes(:user).find(params[:id])
  end
end
