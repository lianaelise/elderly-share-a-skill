Rails.application.routes.draw do

  root to: 'pages#home'


  resources :after_signup

  devise_for :users, controllers: { registrations: 'registrations' }

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
