class HomeController < ApplicationController
  def index
    if params[:ticker] == ""
        @nothing = "Hey! You forgot to enter a symbol!"
    elsif params[:ticker]
        @stock = StockQuote::Stock.quote(params[:ticker])
        if !@stock
          @error = "HEY! That stock symbol doesnt exist!"
        end
    end
  end

  def about

  end
end
