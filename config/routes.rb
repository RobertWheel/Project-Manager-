Rails.application.routes.draw do
  resources :tasks
  get 'dashboard/index'
  resources :projects
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?


  devise_for :users

  resources :projects do
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   resources :projects do
        resources :tasks
   end
  # Defines the root path route ("/")
  root "dashboard#index"
end
