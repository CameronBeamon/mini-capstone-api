Rails.application.routes.draw do
  post "/sessions" => "sessions#create"
  post "/users" => "users#create"

  get "/all_products" => "products#index"
  post "/all_products" => "products#create"
  get "/all_products/:id" => "products#show"
  patch "/all_products/:id" => "products#update"
  delete "/all_products/:id" => "products#destroy"

  get "/all_suppliers" => "suppliers#index"
  post "/all_suppliers/" => "suppliers#create"
  get "/all_suppliers/:id" => "suppliers#show"
  patch "/all_suppliers/:id" => "suppliers#update"
  delete "/all_suppliers/:id" => "suppliers#destroy"

  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  post "/carted_products" => "carted_products#create"
  get "/carted_products" => "carted_products#index"
  delete "/carted_products/:id" => "carted_products#delete"
end
