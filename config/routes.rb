Rails.application.routes.draw do
  devise_for :users

  resources :pages
  resources :exceptions do
    resources :messages do
      get :record
    end
  end

  root to: "exceptions#index"
end
