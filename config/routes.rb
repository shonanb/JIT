Rails.application.routes.draw do
  root 'users/dash_bords#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  namespace :users do
    get 'dash_bords/index'
    resources :articles
  end
end
