Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/sessions" => "sessions#create"
  post "/users" => "users#create"
  get "/all_products" => "products#index"
  post "/all_products" => "products#create"
  get "/all_products/:id" => "products#show"
  patch "/all_products/:id" => "products#update"
  delete "/all_products/:id" => "products#destroy"
  get "/all_suppliers" => "suppliers#index"
  post "/all_suuppliers/" => "suppliers#create"
  get "/all_suuppliers/:id" => "suppliers#show"
  patch "/all_suuppliers/:id" => "suppliers#update"
  delete "/all_suuppliers/:id" => "suppliers#destroy"
  # get "/first_product", controller: "products", action: "show_first"
  # get "/third_product", controller: "products", action: "show_third"
  # Defines the root path route ("/")
  # root "articles#index"
end
