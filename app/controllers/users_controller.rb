class UsersController < ApplicationController
  before_action :logged_in_user, only: [:search, :edit, :update, :destroy, :following, :followers]
  before_action :admin_user,     only: :destroy

  def index
    @q = User.ransack(params[:q])
    @users = User.page(params[:page]).per(15)
  end

  def show
    @user = User.find(params[:id])
    @following = @user.following
    @followers = @user.followers
    # @feed = current_user.feed.page(params[:page]).per(8) if user_signed_in?
    @microposts = @user.microposts.page(params[:page]).per(10) if user_signed_in?
  end

  def search
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).page(params[:page]).per(15)
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'ユーザーを削除しました' }
      format.json { head :no_content }
    end
  end

  def following
    @user  = User.find(params[:id])
    @users = @user.following
    @following = @user.following
    @followers = @user.followers
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers
    @following = @user.following
    @followers = @user.followers
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email, :avatar, :password, :password_confirmation)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
