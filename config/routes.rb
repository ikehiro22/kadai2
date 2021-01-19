Rails.application.routes.draw do
  get '/' => "posts#top"

  get 'posts/index' => "posts#index"

  get 'posts/new' => "posts#new"
  
  post "posts/create" => "posts#create"

  get 'posts/:id/show' => "posts#show"

  get 'posts/:id/edit' => "posts#edit"

 
  patch "posts/:id/update" => "posts#update"
  
  delete "posts/:id/destroy" => "posts#destroy"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
