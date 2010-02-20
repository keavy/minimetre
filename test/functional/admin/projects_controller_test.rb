require 'test_helper'

class Admin::ProjectsControllerTest < ActionController::TestCase
  context "on GET to :index" do
    setup {get :index}
    should_respond_with :success
  end
  
  context "on GET to :new" do
    setup {get :new}
    should_respond_with :success
    should_render_template :new
    should_assign_to :project
  end
  
  context "on POST to :create" do
    context "with valid details" do
      setup do 
        attrs = Factory.attributes_for(:project)
        post :create, :project => attrs
      end
      
      should_change "Project.count", :by => 1
      should_redirect_to("Admin projects path") {admin_projects_path}
    end
    
    context "with invalid details" do
      setup do 
        attrs = Factory.attributes_for(:project, :title => nil)
        post :create, :project => attrs
      end
      
      should_not_change "Project.count"
      should_render_template :new
      should "return error on title" do
        assert assigns(:project).errors.on(:title)
      end
    end
  end
  
  context "on GET to :edit" do
    setup do
      @project = Factory(:project)
      get :edit, :id => @project
    end
    should_respond_with :success
    should_render_template :edit
    should_assign_to :project
  end
    
end
