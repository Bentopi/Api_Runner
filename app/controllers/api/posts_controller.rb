class Api::PostsController < ApplicationController

  protect_from_forgery with: :null_session

  before_action :doorkeeper_authorize!

  before_action do
    request.format = :json
  end

  def list
    @posts = Post.all
  end

  def show
    @post = Post.find_by id: params[:id]
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    if @post.save
      render :show, status: 201
    else
      render json: {errors: @post.errors}, status: 402
    end
  end

  def update
    @post = Post.find_by id: params[:id]
    @post.title = params[:post][:title]
    if @post.save
      render :show, status: 201
    else
      render json: {errors: @post.errors}, status: 402
    end
  end

  def delete
    @post = Post.find_by id: params[:id]
    @post.destroy
    if @post
      render json: {message: "Could not delete post."}, status: 201
    else
      render json: {message: "Deleted post!"}, status: 402
    end
  end




end
