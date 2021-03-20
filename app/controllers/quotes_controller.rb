class QuotesController < ApplicationController

  def about
  end

  # create a new quote
  def form
    @quote = Quote.new
  end

  # create a new quote
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

  # get a single random quote from the database
  def quote_home
      quotes_list = Quote.all
      quoteNum = (0..quotes_list.length-1).to_a.shuffle.first
      @somequote = quotes_list[quoteNum]
  end

  # get the list of all of the quotes
  def index
    quotes_list = Quote.all
    @myquotes = quotes_list
  end

end
