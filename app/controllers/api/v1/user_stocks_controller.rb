module Api
  module V1
    
    class UserStocksController < ApplicationController
      
      respond_to :json
      def index
        @userStock = UserStock.paginate(page: params[:page], per_page: 4)
        respond_with current_user
      end
    end
    
  end
end


