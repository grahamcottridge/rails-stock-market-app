class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @noentry = "Please enter a symbol"
    elsif
      if params[:id]
        begin
          @stock = StockQuote::Stock.quote(params[:id])
        rescue
          @error = "That stock symbol doesn't exist, please try again"
        end
      end
    end
  end

  def about
  end
end
