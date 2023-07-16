Rails.application.routes.draw do
  # Budgets Routes
  get "/budgets" => "budgets#index"
  get "/budgets/:id" => "budgets#show"
  post "/budgets" => "budgets#create"
  patch "/budgets/:id" => "budgets#update"
  delete "/budgets/:id" => "budgets#destroy"
  # Transactions Routes
  get "/transactions" => "transactions#index"
  get "/transactions/:id" => "transactions#show"
  post "/transactions" => "transactions#create"
  patch "/transactions/:id" => "transactions#update"
  delete "/transactions/:id" => "transactions#destroy"
  # User Routes
  post "/users" "user#create"
end
