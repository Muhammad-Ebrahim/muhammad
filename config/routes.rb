Rails.application.routes.draw do
    root 'essays#index'
    resources :essays
end
