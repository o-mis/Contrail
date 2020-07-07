class StaticPagesController < ApplicationController
  def home
    # @micropost = current_user.microposts.page(params[:page]).per(15)
    # @microposts = Micropost.page(params[:page]).per(15)
    @feed = current_user.feed.page(params[:page]).per(15) if user_signed_in?
    @like = Like.new
    @bookmark = Bookmark.new
  end
end
