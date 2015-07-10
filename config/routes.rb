Rails.application.routes.draw do

  root 'acronyms#index'

  resources :acronyms, only: [:index, :show]

  get '/search/:query', to: 'acronyms#search', as: 'search'

end
