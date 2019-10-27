Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'
  resources :running_blogs
  root to: redirect('/running_blogs')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
