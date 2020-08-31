Rails.application.routes.draw do

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # Users CRUD
  resources :users

  # Comments CRUD
  resources :comments

  # Posts CRUD
  resources :posts

  post '/posts/:id' => 'posts#add_comment_to_post'

  #JSON Routes
  #Route to provide ONLY the posts that belong to the current user
  get '/posts/:id/show_my_posts' => 'posts#show_my_posts'


end
