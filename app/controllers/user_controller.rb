class UserController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  def index
    @q = User.ransack(params[:q])
    @users=@q.result(distinct: true)
  end

  def show

  end

  def new

    @user = User.new
  end

  def create

    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    
  end

  def update

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy

    if @user.destroy
      redirect_to user_index_url , notice: "user is successfully destroy"
    else
      render :new, notice: "user not found"
    end
  end

  private
  
      def user_params
        params.require(:user).permit(:ip, :username)
      end

      def set_params
        @user=User.find(params[:id])
      end
end
