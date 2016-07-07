Rails.application.routes.draw do
  use_doorkeeper

  get 'api/posts' => 'api/posts#list'
  get 'api/post/:id' => 'api/posts#show'




  
end
