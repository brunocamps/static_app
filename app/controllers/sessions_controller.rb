class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # log in user and redirect to the user's show page
    else
      # create error nessage
      # render 'new'
    end

  end

  def destroy

  end
end
