Rails.application.routes.draw do

  captcha_route

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}

  match '/404', to: 'errors#not_found', via: [:get, :post]
  match '/500', to: 'errors#internal_error', via: [:get, :post]

  resources :custom, only: [:index] do
    collection do
      get :design
      get :length
      get :color
      get :photos
      get :confirmation
    end
  end

  get '/about' => 'welcome#about'
  get '/contact' => 'welcome#contact'

  root 'welcome#index'
end
