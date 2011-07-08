ActionController::Routing::Routes.draw do |map|
#  map.connect 'articles/introduce.:format',
#              :controller => "articles",
#              :action => "show_introduces"
#  map.connect 'articles/:article_type.:format',
#              #:conditions => {:method =>:get},
#              :controller => "articles",
#              :action =>"show_articles_by_type",
#              :requirements =>{:article_type =>/product|app|tech|info/}
#  map.resources :articles
#  map.connect 'articles/:id/mark',
#              :controller => "articles",
#              :action =>"mark",
#              :conditions => {:method => :post}

  map.connect 'locations/:warn_temperature/:pre_temperature',
    :controller => "locations",
    :action => "warn_temperature"

  map.connect 'locations/floor/:floor_id/:warn_temperature',
    :controller => "locations",
    :action => "warn_floor"

  map.connect 'locations/:warn_temperature',
    :controller => "locations",
    :action => "warn_number"

  map.connect 'temperature/post_temperature',
    :controller => "temperature",
    :action => "post_temperature",
    :conditions => {:method => :post}

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
