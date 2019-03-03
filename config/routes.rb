Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users, controllers: { registrations: 'registrations' }

  mount ActionCable.server => '/cable'


  resources :chats, only: [:index, :create, :show] do
    resources :appointments, only: [:create]
   resources :messages, only: [:create]
  end

  resources :after_signup

  resources :teachers, only: [:index, :show, :edit, :update] do
    collection do
      get 'profile'
    end
    resources :appointments, only: [:new, :create]
    resources :reviews, only: [:new, :create]
    resources :skills do
      resources :subjects
    end
  end

  resources :students, only: [:show,:edit,:update] do
    collection do
      get 'profile'
    end
    resources :appointments, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :appointments, only: :index do
    member do
      post :accept
      post :reject
    end
    collection do
      get 'my-appointments'
    end
  end

end
