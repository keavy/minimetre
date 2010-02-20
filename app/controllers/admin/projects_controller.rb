class Admin::ProjectsController < AdminAreaController
  resource_controller
  
  [create, update].each { |action| action.wants.html {redirect_to admin_projects_path} }
end
