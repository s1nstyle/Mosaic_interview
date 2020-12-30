Rails.application.routes.draw do
  resources :apis
  get '/:school_name/:description', to:'pages#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
