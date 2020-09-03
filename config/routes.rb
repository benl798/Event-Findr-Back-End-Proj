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

  post '/posts/:id/add_comment_to_post' => 'posts#add_comment_to_post'

  resources :likes

  # Like Posts
  post '/posts/:id/like_this_post' => 'posts#like_this_post'


  # Dislike Posts
  # post '/posts/:id/dislike_this_post' => 'posts#dislike_this_post'

  #JSON Routes
  #Route to provide ONLY the posts that belong to the current user
  get '/my_posts' => 'posts#show_my_posts'
  get '/setUserName' => 'users#setUserName'
  post '/update_my_location' => 'users#update_my_location'
  post '/create_like_for_this_post' => 'posts#create_like_for_this_post'
  get '/get_current_user' => 'users#get_current_user'
  post '/remove_like_from_post' => 'posts#remove_like_from_post'
  get '/get_owner_of_post/:id' => 'posts#get_owner_of_post'

  post '/follow_this_user' => 'users#handle_follow'

  get '/distance_from_me/:id' => 'posts#distance_from_me'

  #Routes to choose cards on index page
  get '/index_all' => 'posts#index_all'
  get '/index_near_me' => 'posts#index_near_me'
  get '/index_follows' => 'posts#index_follows'

  # Knock user tokens

end
