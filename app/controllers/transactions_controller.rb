class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    render template: "transactions/index"
  end

  def show
    @transaction = Transaction.find_by(id: params[:id])
    if @transaction
      render template: "transactions/show"
    else
      render json: { error: "transaction does not exist" }, status: 422
    end
  end
end
