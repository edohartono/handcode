Rails.application.routes.draw do
  
  devise_for :user do
    get 'signup' => 'devise/registrations#new', :as => :new_user_registration 
    post 'signup' => 'devise/registrations#create', :as => :custom_user_registration
  end
  get 'sessions/create'
  get 'sessions/destroy'

  resources :posts
  resources :category

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resources :main, only: [:show]
  root 'pages#index'
  get '/:page' => 'main#show'
  # njir tuo ra ndolor :D, marai lemot. ganggu privasi wong to oon
  # woco iki nyo http://wcw.cs.ui.ac.id/repository/dokumen/lihat/10554.pdf
  # ben pinter sitek, eman2 nek mati ra ono prestasi :D
  # tolol natural :D
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
