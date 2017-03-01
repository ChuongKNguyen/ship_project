Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'home/index'
  resources :users, :boats, :jobs
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
