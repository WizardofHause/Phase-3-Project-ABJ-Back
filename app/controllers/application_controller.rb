class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Returns ALL items
  get "/" do
    items = Item.all
    items.to_json
  end

  # Sorts items A-Z
  get "/a_z" do
    items = Item.all.order(:name)
    items.to_json
  end

  # returns item CATEGORIES
  get "/categories" do
    items = Item.all.order(:category).uniq
    items.to_json
  end

  # sorts by PRICE LOW => HIGH
  get "/low_high" do
    items = Item.all.order(:price)
    items.to_json
  end

  # sorts by PRICE HIGH => LOW
  get "/high_low" do
    items = Item.all.order(:price).reverse
    items.to_json
  end

  get "/items/:id" do
    item = Item.find(params[:id])
    item.to_json(include: {reviews: {include: {user:}}})
  end

end
