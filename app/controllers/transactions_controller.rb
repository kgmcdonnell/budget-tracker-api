class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token

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

  def create
    @transaction = Transaction.new(
      date: params[:date],
      description: params[:description],
      category_id: params[:category_id],
      amount: params[:amount],
      income: params[:income],
      expense: params[:expense],
      user_id: params[:user_id],
    )
    if @transaction.save
      render template: "transactions/show"
    else
      render json: { error: @transaction.error.full_messages }, status: 422
    end
  end
end
