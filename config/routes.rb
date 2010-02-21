ActionController::Routing::Routes.draw do |map|
  map.admin 'admin', :controller => 'admin/projects'
  map.namespace :admin do |admin|
    admin.resources :projects, :recommendations
  end
  
  map.root :controller => 'projects'
end
