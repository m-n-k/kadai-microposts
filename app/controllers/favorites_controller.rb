class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    a_post = Micropost.find(params[:micropost_id])
    current_user.like(a_post)
    flash[:success] = 'お気に入り登録しました'
    redirect_to :back
  end

  def destroy
    a_post = Micropost.find(params[:micropost_id])
    current_user.unlike(a_post)
    flash[:success] = 'お気に入りを解除しました'
    redirect_to :back
  end
end
