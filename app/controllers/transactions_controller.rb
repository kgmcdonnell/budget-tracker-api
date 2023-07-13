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

  def update
    @transaction = Transaction.find_by(id: params[:id])
    @transaction.update(
      date: params[:date] || @transaction.date,
      description: params[:description] || @transaction.description,
      category_id: params[:category_id] || @transaction.category_id,
      amount: params[:amount] || @transaction.amount,
      income: params[:income] || @transaction.income,
      expense: params[:expense] || @transaction.expense,
    )
    if @transaction.valid?
      render template: "transactions/show"
    else
      render json: { error: @transaction.error.full_messages }, status: 422
    end
  end

  def destroy
    @transaction = Transaction.find_by(id: params[:id])
    @transaction.destroy
    render json: { message: "sucessfully deleted transaction" }
  end
end
