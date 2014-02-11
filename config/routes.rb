ShutaidongBe::Application.routes.draw do
  resources :taidongs

  resources :accounts

  root 'welcome#index'

  namespace :admin do
    resources :accounts do
      resources :taidons
    end
  end
end
