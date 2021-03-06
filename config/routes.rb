OpticaliaVO::Application.routes.draw do

  localized do
	  resources :servicios 
	  resources :consultas
	  resources :peeps
	  resources :sessions, only: [:new, :create, :destroy]
	  resources :marcas
	  root 'static_pages#home'
	#  match '/', to: 'static_pages#home', via: 'get'
	  match '/acerca',   to: 'peeps#index',   via: 'get'
	  match '/contacto', to: 'consultas#new', via: 'get'
	  match '/aviso',   to: 'static_pages#aviso',   via: 'get'
	  match '/privacidad', to: 'static_pages#privacidad', via: 'get'
	  #match '/signin',  to: 'sessions#new',         via: 'get'
	  #match '/signout', to: 'sessions#destroy',     via: 'delete'
  end
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
