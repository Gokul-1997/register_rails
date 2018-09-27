class UsersController < ApplicationController
  def login
  	
  end
def demo
@log = User.find_by(email: params[:user][:email],password: params[:user][:password])
    
       if @log
  	        render json: @log
  	    else
  	    	render json: false
  	    end

end



  def register
      @user = User.all 
      render json: @user
  

  end





  def reg
  
  	@user = User.create(name: params[:user][:name],email: params[:user][:email],password: params[:user][:password],
  		phone_no: params[:user][:phone_no],dob: params[:user][:dob])
    if @user.save
 redirect_to users_login_path 
    else
 	 render json: false
    end
  end

end
