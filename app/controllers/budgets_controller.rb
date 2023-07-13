class BudgetsController < ApplicationController
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
end
