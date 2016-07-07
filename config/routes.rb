Rails.application.routes.draw do

get 'api/posts' => 'api/posts#list'
get 'api/post/:id' => 'api/posts#show'
end
