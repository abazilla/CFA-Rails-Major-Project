Rails.application.routes.draw do



  get 'pages/admindashboard'

  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"

  post '/rate' => 'rater#create', :as => 'rate'

  resources :curriculums do
    member do
      resources :comments
    end
  end

  devise_for :users, :controllers => { registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks" }, default_url: "/assets/missing.png"

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
