class ProfilesController < ApplicationController


  before_action :find_user, only: [:show, :follow, :unfollow, :followers, :follows]
  def index
    @users = User.all
  end

  def show
  end

  def follow

    current_user.follow(@user)

    redirect_to action: 'show'
  end

  def unfollow

    current_user.stop_following(@user)

    redirect_to action: 'show'
  end

  def followers

  end

  def follows
  end


  private

  def find_user
    @user = User.find(params[:id])
  end

end
