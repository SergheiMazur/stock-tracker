class StocksController < ApplicationController
  
  def search
    if params[:stock].blank?
      flash.now[:danger] = "Please enter stock symbol"
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "Please enter valid stock symbol" unless @stock
    end
    respond_to do |format|
      format.js { render partial: 'users/result'}
    end
  end
end