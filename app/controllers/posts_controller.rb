class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    # 下記記述で、投稿詳細ページにリダイレクト(自動的に転送)させる
    redirect_to post
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
