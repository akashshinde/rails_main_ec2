Mauli::Application.routes.draw do

  get "transactions/add_total_amount"
  post "transactions/add_amount"
  resources :transactions 

  get "transactions/new" 
  get "add_user/do_transaction"
  get "add_user/delete_transaction"
  get "add_user/add_buyer"
  post "add_user/add_user_db"
  get "add_user/main_amount"


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  post "images/add_image"
  post "images/add_image_project"

  get "images/add_image_project_view"

  get "images/add"
  get "flats/all_flats"

  get "flats/all_images"
  get "flats/all_images_project"
    

  resources :hks

  resources :floors

  resources :bbhks

  resources :flats

  resources :bhks

  resources :projects



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
