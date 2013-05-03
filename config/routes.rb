Ponger::Application.routes.draw do
  resources :brackets
  resources :matches

  resources :players

  root to: "players#index"
end
