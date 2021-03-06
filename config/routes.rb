Rails.application.routes.draw do

  # mount RailsAdmin::Engine => '/sepsiddharth', as: 'rails_admin'
  devise_for :contributors
  devise_for :administrators
  get 'posts/index'

  get 'posts/create'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/show'

  get 'posts/update'

  get 'posts/destroy'

  get 'administrators/index'

  get 'administrators/create'

  get 'administrators/new'

  get 'administrators/edit'

  get 'administrators/show'

  get 'administrators/update'

  get 'administrators/destroy'

  get 'contributors/index'

  get 'contributors/create'

  get 'contributors/new'

  get 'contributors/edit'

  get 'contributors/show'

  get 'contributors/update'

  get 'contributors/destroy'

  get 'administrators/verify' => 'administrators#verify'
  post 'administrators/verify_administrator' => 'administrators#verify_token'

  delete 'administrators/moderate' => 'administrators#moderate_content'

  resources :contributors do
    resources :posts
  end

  resources :posts
  resources :administrators

  root 'posts#index'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
