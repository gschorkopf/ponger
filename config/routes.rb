Ponger::Application.routes.draw do
  resources :brackets, only: [:new, :create]
  resources :matches, only: [:new, :create]
  resources :players

  root to: "players#index"
end
