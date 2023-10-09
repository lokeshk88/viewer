Rails.application.routes.draw do
  resources :admins
    resources :user do
      resources :roles do 
        resources :teams do
          resources :tasks
      end
      end
    end

    root 'user#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
