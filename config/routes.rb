Rails.application.routes.draw do
  # set the controller and action to go to upon visiting '/'
  # the format is: root 'controller#action'
  root 'cities#index'

  resources :cities, only: :index do
    resources :parks, except: :destroy do
      resources :reviews, except: [:index, :show]
    end
  end
  
  # for custom routes, the format is get 'yourpathhere', to: "controller#action"
  get '/cities/all', to: "cities#index"
end
