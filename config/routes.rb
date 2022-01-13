Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/all_products" => "products#index"
  post "/all_products/:id" => "products#show"
  # get "/first_product", controller: "products", action: "show_first"
  # get "/second_product", controller: "products", action: "show_second"
  # get "/third_product", controller: "products", action: "show_third"
  # Defines the root path route ("/")
  # root "articles#index"
end
