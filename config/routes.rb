Rails.application.routes.draw do
  get '/index' => 'home#index'
  get '/my/post' => 'my#post'
  get '/artikel' => 'home#artikel'
  get '/about' => 'home#about'
  get '/' => 'home#index'
  get '/post/detail/:id' => 'my#detail'
  get '/post/input' => 'my#input'
  post '/post/create' => 'my#create'
  
  get '/post/edit/:id' => 'my#edit'
  post '/post/update/:id' => 'my#update'
  get '/post/delete/:id' => 'my#delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/home", to: "home#index" 
  root "home#index"
end
