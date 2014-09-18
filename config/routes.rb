Rails.application.routes.draw do

  captcha_route

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}

  scope '(:locale)' do
    match '/404', to: 'errors#not_found', via: [:get, :post]
    match '/500', to: 'errors#internal_error', via: [:get, :post]
    get '/about'=> 'welcome#about'
    get '/contact'=> 'welcome#contact'
  end

  get '/:locale' => 'welcome#index'

  root 'welcome#index'
end
