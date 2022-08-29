Rails.application.routes.draw do
  root "trick_or_treaters#index"
  resources :trick_or_treaters, only: [:index, :create, :destroy]
end
