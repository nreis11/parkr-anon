Rails.application.routes.draw do
  resources :cities, only: :index do
    resources :parks, only: [:index, :show, :new, :edit] do
      resources :reviews, except: :index
    end
  end
end
