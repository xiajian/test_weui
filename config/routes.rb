Rails.application.routes.draw do

  get 'sockets/index'

  get 'sockets/echo'

  get 'sockets/chat'

  get 'sockets/status'


  resources :homes do
    collection do
      get :test_comet
      get :test
      get :test_sse
      get :tubesock
      get :sse
    end
  end

  resources :sockets

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'homes#index'
end
