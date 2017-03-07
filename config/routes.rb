Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'home#index'
  resources :users, :boats, :jobs, :boatsjobs
  get '/jobs/:id/assign', to: 'jobs#assign', as: 'assign_jobs'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
