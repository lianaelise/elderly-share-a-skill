Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :teachers, only: [:index, :show] do
    resources :skills do
    resources :subjects
      end
  end

  resources :students, only: [:show]
  resources :appointments
  resources :reviews
  resources :after_signup

end
