Rails.application.routes.draw do
  
  resources :posts, only: [:index, :show, :edit, :update, :new, :create]
  resources :bloggers, only: [:index, :show, :edit, :update, :new, :create]
  resources :destinations, only: [:index, :show, :edit, :update, :new, :create]
  
  post '/posts/:id', to: 'posts#like_post', as: 'like'
  # get 'posts/index'

  # get 'posts/show'

  # get 'posts/edit'

  # get 'posts/update'

  # get 'posts/new'

  # get 'posts/create'

  # get 'destinations/index'

  # get 'destinations/show'

  # get 'destinations/edit'

  # get 'destinations/update'

  # get 'destinations/new'

  # get 'destinations/create'

  # get 'bloggers/index'

  # get 'bloggers/show'

  # get 'bloggers/edit'

  # get 'bloggers/update'

  # get 'bloggers/new'

  # get 'bloggers/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
