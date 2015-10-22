Rails.application.routes.draw do
    
    get 'admin' => 'admin_panel#dashboard'
    
    get 'new_item' => 'items#new'
    
    get 'items_index' => 'items#index'
    
  get 'admin_panel/dashboard'

  get 'admin_panel/orders'

 post 'add_to_cart' => 'cart#add_to_cart'

 get 'checkout' => 'cart#checkout'

  post 'checkout' =>'cart#checkout'

  post 'order_complete' =>'cart#order_complete'

  get 'view_order' => 'cart#view_order'

  resources :line_items
  resources :orders
  devise_for :users
    
#  root 'store_front#home'
    root 'store_front#cover'

  get 'catalog' => 'store_front#catalog'

    get '/items_by_group' => 'store_front#items_by_group', as: :categorical

    get 'wedding' => 'store_front#wedding'

    get 'exclusive' => 'store_front#exclusive'

  get 'about' => 'store_front#about'

  resources :items
  resources :jewelrymetals
  resources :jewelrycollections
  resources :jewelrycategories
  resources :jewelrygroups
    
    
    
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
