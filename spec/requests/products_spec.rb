require "rails_helper"

RSpec.describe "Products", type: :request do
  describe "GET /all_products" do
    it "displays all products" do
      Product.create(name: "Iphone", price: 900, description: "Elegant", supplier_id: 1)
      Product.create(name: "Android", price: 1000, description: "Robust", supplier_id: 1)
      Product.create(name: "Blackberry", price: 20, description: "Absent", supplier_id: 2)
      get "/all_products"
      expect(response).to have_http_status(200)
    end
  end
end
