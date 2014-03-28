class QuotesController < ApplicationController
  # GET /quotes
  # GET /quotes.json
  def index
    @quote = Quote.all.sample
  end

  def about
  end
end
