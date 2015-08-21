Rails.application.routes.draw do
  resources :robots
  root 'welcome#index'

end
