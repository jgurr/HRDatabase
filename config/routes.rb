HRDatabase::Application.routes.draw do

  # Route for our home page.

  get '/', controller: 'roles', action: 'index'

  # Route for the Session resource:

  get '/login', controller: 'sessions', action: 'new'
  post '/sessions', controller: 'sessions', action: 'create'
  get "/logout", controller: 'sessions', action: 'destroy'

  post "/search", controller: 'hotel_locations', action: 'filter'

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # Routes for the Division resource:
  # CREATE
  get '/divisions/new', controller: 'divisions', action: 'new', as: 'new_division'
  post '/divisions', controller: 'divisions', action: 'create'

  # READ
  get '/divisions', controller: 'divisions', action: 'index', as: 'divisions'
  get '/divisions/:id', controller: 'divisions', action: 'show', as: 'division'

  # UPDATE
  get '/divisions/:id/edit', controller: 'divisions', action: 'edit', as: 'edit_division'
  put '/divisions/:id', controller: 'divisions', action: 'update'

  # DELETE
  delete '/divisions/:id', controller: 'divisions', action: 'destroy'
  #------------------------------

  # Routes for the Employee resource:
  # CREATE
  get '/employees/new', controller: 'employees', action: 'new', as: 'new_employee'
  post '/employees', controller: 'employees', action: 'create'

  # READ
  get '/employees', controller: 'employees', action: 'index', as: 'employees'
  get '/employees/:id', controller: 'employees', action: 'show', as: 'employee'

  # UPDATE
  get '/employees/:id/edit', controller: 'employeess', action: 'edit', as: 'edit_employee'
  put '/employees/:id', controller: 'employeess', action: 'update'

  # DELETE
  delete '/employees/:id', controller: 'employees', action: 'destroy'
  #------------------------------

  # Routes for the Title resource:
  # CREATE
  get '/titles/new', controller: 'titles', action: 'new', as: 'new_title'
  post '/titles', controller: 'titles', action: 'create'

  # READ
  get '/titles', controller: 'titles', action: 'index', as: 'titles'
  get '/titles/:id', controller: 'titles', action: 'show', as: 'title'

  # UPDATE
  get '/titles/:id/edit', controller: 'titles', action: 'edit', as: 'edit_title'
  put '/titles/:id', controller: 'titles', action: 'update'

  # DELETE
  delete '/titles/:id', controller: 'titles', action: 'destroy'

   # Routes for the Roles resource:
  # CREATE
  get '/roles/new', controller: 'roles', action: 'new', as: 'new_role'
  post '/roles', controller: 'roles', action: 'create'

  # READ
  get '/roles', controller: 'roles', action: 'index', as: 'selection'
  get '/roles/:id', controller: 'roles', action: 'show', as: 'role'

  # UPDATE
  get '/roles/:id/edit', controller: 'roles', action: 'edit', as: 'edit_role'
  put '/roles/:id', controller: 'roles', action: 'update'

  # DELETE
  delete '/roles/:id', controller: 'roles', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
