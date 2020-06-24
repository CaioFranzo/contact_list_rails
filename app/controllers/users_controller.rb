class UsersController < ApplicationController

  before_action :require_logged_in_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Usuário criado com sucesso'
      redirect_to root_url

    else
      render 'new'
    end
  end

  def edit

  end
  def update
    if current_user.update(user_params)
      flash[:success] = 'Dados atualizador'
      redirect_to contacts_url
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)

    end


end