Rails.application.routes.draw do
  resources :student_accounts
  get 'student_accounts/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "student_accounts#index"
end
