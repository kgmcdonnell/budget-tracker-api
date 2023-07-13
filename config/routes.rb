Rails.application.routes.draw do
  # Budgets Routes
  get "/budgets" => "budgets#index"
  get "/budgets/:id" => "budgets#show"
  # Transactions Routes
  get "/transactions" => "transactions#index"
  get "/transactions/:id" => "transactions#show"
end
