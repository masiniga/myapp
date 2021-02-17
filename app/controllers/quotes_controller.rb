class QuotesController < ApplicationController

  def quote_home
      quotes_list = Quote.all

      quoteNum = (0..quotes_list.length-1).to_a.shuffle.first

      @somequote = quotes_list[quoteNum]

  end

  def index
    quotes_list = Quote.all
    @myquotes = quotes_list
  end

end
