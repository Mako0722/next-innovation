Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'toppage#index'

  resources :users, only: [:index, :show] do 
    member do
      get :goods
    end
  end


  resources :results do 
    resource :goods, only: [:create, :destroy]
  end

  resources :comments, only: [:create, :destroy]


  get '/good_ranking', to: 'goods#index'

end
