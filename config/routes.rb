Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :teachers, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
    resources :skills do
    resources :subjects
      end
  end

  resources :students, only: [:show] do
    resources :reviews, only: [:new, :create]
  end
  resources :appointments do
    collection do
      get 'my-appointments'
    end
  end
  resources :after_signup

end
