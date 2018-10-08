class UsersController < ApplicationController
    def create 
        User.create(email: params[:email], 
            password: params[:password], 
            password_confirmation: params[:password_confirmation]) 
            redirect_to :root 
    end

    
end
