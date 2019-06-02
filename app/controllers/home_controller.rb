class HomeController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).paginate(page: params[:page], per_page: 6)
  end
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end
end
