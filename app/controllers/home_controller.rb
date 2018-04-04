class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @noentry = "Please enter a symbol"
    elsif params[:id]
      @stock = StockQuote::Stock.quote(params[:id])
    end
  end

  def about
  end
end
