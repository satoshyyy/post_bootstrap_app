class PostsController < ApplicationController

  # before_actionフィルタで指定したアクションの前に実行するメソッドを共通化
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.order(id: :asc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    # 下記記述で、投稿詳細ページにリダイレクト(自動的に転送)させる
    redirect_to post
  end

  def edit
  end

  def update
    post.update!(post_params)
    redirect_to post
  end

  def destroy
    post.destroy!
    redirect_to root_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
