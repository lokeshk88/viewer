Rails.application.routes.draw do
    resources :user do
      resources :roles do 
        resources :teams do
          resources :tasks
      end
      end
    end

    root 'user#index'
end