Rails.application.routes.draw do
  resources :users
    post '/users/create', to: 'user#create'
    get '/users/show/:id', to: 'user#show'
    post '/users/edit/:id', to: 'user#edit'
    delete '/users/delete/:id', to: 'user#delete'

    post '/note/create', to: 'note#create'
    get '/note/show', to: 'note#show'
    post '/note/edit/:id', to: 'note#edit'
    delete '/note/delete/:id', to: 'note#delete'

    post '/session/create', to: 'session#create'
end
