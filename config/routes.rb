Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  Rails.application.routes.draw do
    resources :restaurants, only: [:index, :show, :new, :create] do
      resources :reviews, only: [:new]
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
  # restaurants
  # resources :restaurants, only: [:index, :show, :new, :create]
  # get ...........,    #index
  # get ............    #show

  # resources :restaurants, { only: [:index, :show, :new, :create] }


# index, show, new, create


  # Defines the root path route ("/")
  # root "posts#index"
end
