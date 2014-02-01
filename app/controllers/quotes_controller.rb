class QuotesController < ApplicationController
  # GET /quotes
  def index
    @quote = Quote.all.sample
  end

  def about
  end
end
