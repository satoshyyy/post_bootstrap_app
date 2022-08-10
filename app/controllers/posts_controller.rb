class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    # 下記記述で、投稿詳細ページにリダイレクト(自動的に転送)させる
    redirect_to post
  end
end
