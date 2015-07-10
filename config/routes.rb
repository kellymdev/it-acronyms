Rails.application.routes.draw do

  root 'acronyms#index'

  resources :acronyms, only: :index

end
