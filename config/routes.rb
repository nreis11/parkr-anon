Rails.application.routes.draw do
  resources :cities, only: :index do
    resources :parks, only: [:index, :show]
  end
end
