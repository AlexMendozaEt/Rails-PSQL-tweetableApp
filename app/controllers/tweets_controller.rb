class TweetsController < ApplicationController
  before_action :set_tweet, only: %i[show edit update destroy]

  # GET /tweets
  def index
    @tweets = Tweet.all
  end

  # GET /tweets/1
  def show
    @tweets = Tweet.all
    @user = User.all
    @tweetnew = Tweet.new
    @likes = Like.all
  end

  # GET /tweets/new
  def new
    @tweets = Tweet.all
    @tweet = Tweet.new
    @users = User.all
    @likes = Like.all
  end

  # GET /tweets/1/edit
  def edit; end

  # POST /tweets
  def create
    @tweet = Tweet.new(tweet_params)
    @tweet[:user_id] = current_user.id
    if @tweet.save
      redirect_to new_tweet_path, notice: "Tweet was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tweets/1
  def update
    if @tweet.update(tweet_params)
      redirect_to @tweet, notice: "Tweet was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /tweets/1
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy

    redirect_to new_tweet_path, notice: "Tweet was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tweet_params
    params.require(:tweet).permit(:body, :replied_to_id, :user_id)
  end
end
