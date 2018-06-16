module Api
  module V1
    
    class UserStocksController < ApplicationController
      respond_to :json
      def index
        respond_with UserStock.all
      end
    end
    
  end
end


