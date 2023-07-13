Rails.application.routes.draw do
  # Budgets Routes
  get "/budgets" => "budgets#index"
  get "/budgets/:id" => "budgets#show"
  post "/budgets" => "budgets#create"
  # Transactions Routes
  get "/transactions" => "transactions#index"
  get "/transactions/:id" => "transactions#show"
  post "/transactions" => "transactions#create"
end
