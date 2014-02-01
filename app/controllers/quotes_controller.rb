class QuotesController < ApplicationController
  before_action :set_quote, only: [:show]

  # GET /quotes
  def index
    @quote = Quote.all.sample
  end

  # GET /quotes/1
  def show
  end

  def about
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end
end
