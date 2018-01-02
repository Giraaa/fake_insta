class PostsController < ApplicationController
  #비포액션은 하나의 액션을 실행하기전에 실행하는것임
  before_action :set_post, only [:show, :edit, :update, :destroy]
  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def create
    post = Post.create(
      title: params[:title],
      contents: params[:contents],
      user_id: params[:user_id]
    )
    redirect_to "/"
  end


  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(
      title: params[:title],
      contents: params[:contents]
      )
      redirect_to "/"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/'
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end


end
