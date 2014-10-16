Rails.application.routes.draw do
  resources :national_long_distances

  resources :nls

  resources :nlds

  resources :things

  resources :lists

  resources :nations

  resources :states

  resources :state_details5s

  resources :items

  resources :statedetails

  resources :products

  resources :states_details

  resources :states2s

  resources :state_details

  resources :statesses

  devise_for :admins
  devise_for :users
  get 'home1/index'
  root 'homes#index'

get 'statesses/index'

get 'nlds/index'


  get 'division/index'
  get 'edge_inventory_details/index'

  get 'isms_search/index'

  get 'add_edit_asset/index'

  get 'asset_tagging/index'

  get 'asset_category/index'

  get 'asset_item/index'

  get 'asset_owner/index'

  get 'asset_location/index'

  get 'isms_tagging/index'

  get 'asset_inventory/index'

  get 'homes/index'


get '/index'=>"homes#index"
get "sign_in" => "authentications#sign_in"
get "signed_out" => "authentications#sign_in"
post "sign_in" => "authentications#login"
#get '/edge_contact_details' => "edge_contact_details#index"
get '/asset_inventory' => "asset_inventory#index"
get '/isms_tagging' =>"isms_tagging#index"
get '/asset_location' => "asset_location#index"
get '/asset_owner' => "asset_owner#index"
get '/asset_item' => "asset_item#index"
get '/asset_category' => "asset_category#index"
get '/add_edit_asset' => "add_edit_asset#index"
get '/asset_tagging' => "asset_tagging#index"
get '/isms_search' => "isms_search#index"
get '/division' => "division#index"
get '/home1' => "home1#index"
get '/edge_inventory_details' => "edge_inventory_details#index"
get '/states'=> "states#index"
get '/statesses'=> "statesses#index"
get '/state_details2'=> "state_details2#index"
get '/state_details3'=> "state_details3#index"
get '/state_details4'=> "state_details4#index"
get '/nlds'=> "nlds#index"
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
