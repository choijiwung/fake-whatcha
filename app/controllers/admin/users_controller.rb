class Admin::UsersController < Admin::ApplicationController
  def index
    @users = User.all
  end

  def destroy
    @users = User.find(params[:user_id])
    @users.destroy
    redirect_to admin_users_path
  end

  def upgrade
    @users = User.find(params[:user_id])
    @users.update(
      role: "admin"
    )
    redirect_to admin_users_path
  end

  def downgrade
    @users = User.find(params[:user_id])
    @users.update(
      role: "regular"
    )
      redirect_to admin_users_path
  end
end
