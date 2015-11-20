class UsersController < ApplicationController

  def index
    @event = Event.find(params["event_id"])
    @users = User.all
    @participants = {}
    @users.each do |user|
      if Reservation.where(user_id: user.id, event_id: params["event_id"]).count == 0
        @participants[user] = false
      else
        @participants[user] = true
      end        
    end
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_param)
  # end

  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   @user = User.find(params[:id])
  # end

  # def delete
  #   @user = User.find(params[:id])
  #   @user.delete
    
  #   redirect_to users_path, notice: " \"#{@user.nickname}\" a été supprimé(e) avec succés"
  # end

  def show
    @user = current_user
  end

end
