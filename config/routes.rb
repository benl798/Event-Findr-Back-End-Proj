Rails.application.routes.draw do

  post 'user_token' => 'user_token#create'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # Users CRUD
  # resources :users
  scope '/api' do
    resources :users
    post 'user_token' => 'user_token#create'
  end

  # Comments CRUD
  resources :comments

  # Posts CRUD
  resources :posts

  post '/posts/:id' => 'posts#add_comment_to_post'

  #JSON Routes
  #Route to provide ONLY the posts that belong to the current user
  get '/my_posts' => 'posts#show_my_posts'
  get '/setUserName' => 'users#setUserName'

  # Knock user tokens

end
