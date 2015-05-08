RakeDashboard::Engine.routes.draw do
  resources :tasks, only: [:index, :create]
end
