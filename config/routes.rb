Ponger::Application.routes.draw do
  resources :brackets, only: {:new, :create}
  resources :matches, only: {:index, :new, :create}
  resources :players

  root to: "players#index"
end
