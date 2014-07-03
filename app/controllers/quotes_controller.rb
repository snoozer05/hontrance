class QuotesController < ApplicationController
  def index
    @quote = Quote.all.sample
  end

  def about
  end
end
