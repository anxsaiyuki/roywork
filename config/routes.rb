Rails.application.routes.draw do

get "", to: 'main#index', as: 'index'
get "news", to: 'main#news', as: 'news'
get "service", to: 'main#service', as: 'service'
get "environment", to: 'main#environment', as: 'environment'
get "rooms", to: 'main#rooms', as: 'rooms'
get "medteam", to: 'main#medteam', as: 'medteam'
get "meal", to: 'main#meal', as: 'meal'
get "babycare", to: 'main#babycare', as: 'babycare'
get "mommycare", to: 'main#mommycare', as: 'mommycare'
get "reservation", to: 'main#reservation', as: 'reservation'
get "contact", to: 'main#contact', as: 'contact'
get "links", to: 'main#links', as: 'links'


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
