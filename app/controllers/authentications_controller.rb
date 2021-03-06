class AuthenticationsController < ApplicationController
def sign_in
    @user = User.new
  end

  def login
    username_or_email = params[:user][:username]
    password = params[:user][:password]

    if  username_or_email.rindex('@')
      email=username_or_email
      user = User.authenticate_by_email(email, password)
       
    else
       username=username_or_email
      user = User.authenticate(username, password)
    end

    if user
      session[:user_id] = user.id
      #flash[:notice] = 'Welcome.'
      redirect_to '/index'
      
    else
      flash.now[:error] = 'Unknown user. Please check your username and password.'
       #@user=User.new(params[:user])
      render :action => "sign_in"
    end

  end
def signed_out
  session[:user_id] = nil
  #flash[:notice] = "You have been signed out."
end
end

