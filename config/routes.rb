Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #genders interface routes
  resources :genders do
    resources :categories, only: [:index]
  end

  #categories interface routes
  resources :categories do
    resources :types, only: [:index]
  end

  #types interface routes
  resources :types do 
    resources :styles, only: [:index]
  end

  #styles%products interface routes
  resources :styles do
    resources :products, only: [:index]
  end

  #link to product::id not style/style:id/products
  resources :products, only: [:show]
  
end
