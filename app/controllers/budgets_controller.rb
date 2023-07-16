class BudgetsController < ApplicationController
  before_action :authenticate_user

  def index
    @budgets = current_user.budgets
    render template: "budgets/index"
  end

  def show
    @budget = current_user.budgets.find_by(id: params[:id])
    if @budget
      render template: "budgets/show"
    else
      render json: { error: "Budget does not exist" }, status: 422
    end
  end

  def create
    @budget = Budget.new(
      category_id: params[:category_id],
      amount: params[:amount],
      user_id: current_user.id,
    )
    if @budget.save
      render template: "budgets/show"
    else
      render json: { error: @budget.errors.full_messages }, status: 422
    end
  end

  def update
    @budget = current_user.budgets.find_by(id: params[:id])
    @budget.update(
      category_id: params[:category_id] || @budget.category_id,
      amount: params[:amount] || @budget.amount,
    )
    if @budget.valid?
      render template: "budgets/show"
    else
      render json: { error: @budget.errors.full_messages }, status: 422
    end
  end

  def destroy
    @budget = current_user.budgets.find_by(id: params[:id])
    @budget.destroy
    render json: { message: "sucessfully deleted transaction" }
  end
end
