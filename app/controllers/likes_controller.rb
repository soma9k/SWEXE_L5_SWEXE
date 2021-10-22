class LikesController < ApplicationController
  def create 
    tweet = Tweet.find(params[:tweet_id])
    unless tweet.liked?(current_user)
      tweeet.like(current_user)
    end
    redirect_to root_path
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.liked?(current_user)
      tweeet.unlike(current_user)
    end
    redirect_to root_path
  end
end
