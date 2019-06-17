class SessionController < ApplicationController

  def create
   user = User.find_by(email: params[:email])
   if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     render json: user.id
   else
   end
 end

 def destroy
   session[:user_id] = nil
 end

end
