Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  resources :curriculums
  devise_for :users, :controllers => { registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks" }, default_url: "/assets/missing.png"

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
