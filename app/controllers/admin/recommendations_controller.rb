class Admin::RecommendationsController < AdminAreaController
  resource_controller
  
  [create, update].each { |action| action.wants.html {redirect_to admin_recommendations_path} }
end
