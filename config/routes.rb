Rails.application.routes.draw do

get "", to: 'main#index', as: 'index'
get ":title_en", to: 'main#category', as: 'category'
    
get "test/categorylist", to: 'main#category_list', as: 'category_list'   
get ":title_en/edit", to: 'main#category_edit', as: 'category_edit'
post "test/categorylist", to: 'main#category_add', as: 'category_add'
post ":title_en/edit", to: 'main#category_update', as: 'category_update'
post "test/category_remove.:id", to: 'main#category_remove', as: 'category_remove'
    
post "test/royemail", to: 'main#royemail', as: 'royemail'
post "test/send_email", to: 'main#send_email', as: 'send_email'
    
    
get "/test/room1", to: 'main#room1', as: 'room1'
get "/test/room2", to: 'main#room2', as: 'room2'
get "/test/room3", to: 'main#room3', as: 'room3'

#Modules
get "module/header"
get "module/sideMenu"
get "module/footer"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
	
  # You can have the root of your site routed with "root"
  root :to => 'main#index'

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
