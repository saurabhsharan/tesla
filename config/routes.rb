Rails.application.routes.draw do
  root 'contractors#index'
  post 'contractors/login' => 'contractors#login', as: :contractor_login
  post 'contractors/update_voter_info/:vgi_id' => 'contractors#update_voter_info', as: :update_voter_info
  
  get 'admin' => 'admin#index'
  get 'admin/contractors/:contractor_id' => 'admin#view_contractor', as: :view_contractor
  get 'admin/voters/:voter_id' => 'admin#view_voter', as: :view_voter
  post 'admin/login' => 'admin#login', as: :admin_login
  post 'admin/create_contractor' => 'admin#create_contractor', as: :create_contractor

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
