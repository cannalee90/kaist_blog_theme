Rails.application.routes.draw do
  get 'blog/intro'
  get 'blog/new'
  post 'blog/write'
  post 'blog/update/:id', to: 'blog#update'
  get 'blog/show/:id', to: 'blog#show'
  get 'blog/edit/:id', to: 'blog#edit'
  root 'blog#list'
  
end
