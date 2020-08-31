Rails.application.routes.draw do
  get 'session/home'
  get 'session/new'
  # Users CRUD
  resources :users

  # Comments CRUD
  resources :comments

  # Posts CRUD
  resources :posts

  post '/posts/:id' => 'posts#add_comment_to_post'

end
