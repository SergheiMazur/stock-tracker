module Api
  module V1
    
    class SessionsController < ApplicationController
      skip_before_action :verify_authenticity_token, only: [:create]
      
      def create
        user = User.where(email: params[:email]).first
        
        if user.valid_password?(params[:password])
          render json: user.as_json(only: [:email, :authentication_token]),status: :created
        else
          head(:unauthorized)
        end
        
      end
      
      def destroy
        
      end
      
    end
    
  end
end
