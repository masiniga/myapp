class QuotesController < ApplicationController

  def form
    @quote = Quote.new
  end
  def create
    @quote = Quote.new
    @quote.content = params[:quote][:content]
    @quote.author = params[:quote][:author]
    @quote.language = params[:quote][:language]
    puts params[:quote]
    if @quote.save
      puts "new quote created"
      redirect_to form_path, notice: "New quote created."
    else
      redirect_to form_path, notice: "Error creating user."
    end
  end


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
