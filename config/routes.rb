Rails.application.routes.draw do
  resources :products
  devise_for :users
  root "products#index"

  get "/carts/:id", to: "carts#show", as: "carts"
  post "line_items_buy_now/:product_id", to: "line_items#buy_now", as: "line_item_buy_now"
  post "line_items_add_to_cart/:product_id", to: "line_items#add_to_cart", as: "line_item_add_to_cart"
end
