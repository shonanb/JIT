Rails.application.routes.draw do
  devise_for :users
  root 'users/dash_bords#index'
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  namespace :users do
    get 'dash_bords/index'
  end
end
