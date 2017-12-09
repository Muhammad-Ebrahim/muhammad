Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :photos
    root 'essays#index'
    resources :essays
end
