class BudgetsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @budgets = Budget.all
    render template: "budgets/index"
  end

  def show
    @budget = Budget.find_by(id: params[:id])
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
      user_id: params[:user_id],
    )
    if @budget.save
      render template: "budgets/show"
    else
      render json: { error: @budget.errors.full_messages }, status: 422
    end
  end
end
