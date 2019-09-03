class TransactionsController < ApplicationController

  def index
    @transactions = FidorApi::Transaction.all
  end
end