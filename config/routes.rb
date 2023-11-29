Rails.application.routes.draw do
   get 'dashboard/index'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  devise_for :users

  resources :projects do
       resources :tasks
  end
  # Defines the root path route ("/")
  root "dashboard#index"
end
