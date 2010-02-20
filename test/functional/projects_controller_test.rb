require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  context "on GET to :index" do
    setup do
      3.times {Factory(:project, :category => 'dev')}
      5.times {Factory(:project, :category => 'pm')}
      2.times {Factory(:project, :category => 'side')}
      get :index
    end
    
    should_respond_with :success
    should_assign_to :projects
  end
end
