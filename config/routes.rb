Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users, controllers: { registrations: 'registrations' }

  mount ActionCable.server => '/cable'


  resources :chats, only: [:index, :create, :show] do
   resources :messages, only: [:create]
  end

  resources :after_signup

  resources :teachers, only: [:index, :show] do
    collection do
      get 'profile'
    end
    resources :reviews, only: [:new, :create]
    resources :skills do
    resources :subjects
      end
  end

  resources :students, only: [:show] do
    collection do
      get 'profile'
    end
    resources :reviews, only: [:new, :create]
  end
  resources :appointments do
    collection do
      get 'my-appointments'
    end
  end

end
