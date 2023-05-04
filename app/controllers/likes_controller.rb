class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @like = current_user.likes.build(tweet: @tweet)
    if @like.save
      render :new, status: :ok
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    @like = current_user.likes.find_by(tweet: @tweet)
    if @like.destroy
      render :new, status: :ok
    else
      render :new, status: :unprocessable_entity
    end
  end
end
