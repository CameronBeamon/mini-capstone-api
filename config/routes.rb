Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/all_products" => "products#index"
  post "/all_products/" => "products#create"
  post "/all_products/:id" => "products#show"
  patch "all_products/:id" => "products#update"
  delete "/all_products/:id" => "products#destroy"
  # get "/first_product", controller: "products", action: "show_first"
  # get "/third_product", controller: "products", action: "show_third"
  # Defines the root path route ("/")
  # root "articles#index"
end
