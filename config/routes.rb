Rails.application.routes.draw do
  use_doorkeeper

  get 'api/posts' => 'api/posts#list'
  get 'api/posts/:id' => 'api/posts#show'
  post 'api/posts' => 'api/posts#create'
  post 'api/users' => 'api/users#create'
  delete 'api/users/:id' => 'api/users#delete'
  delete 'api/posts/:id' => 'api/posts#delete'
  put 'api/posts/:id' => 'api/posts#update'



end
