class V2::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      city: params[:city],
      address: params[:address],
      state: params[:state],
      zip_code: params[:zip_code],
      phone: params[:phone]
    )

    redirect_to "/users/#{@user.id}"
  end

  def update
    @user = User.find(params[:id])
    @user.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      city: params[:city],
      address: params[:address],
      state: params[:state],
      zip_code: params[:zip_code],
      phone: params[:phone]
    )

    render 'show.json.jbuilder'
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete

    @users = User.all
    render 'index.json.jbuilder'
    
  end
end
