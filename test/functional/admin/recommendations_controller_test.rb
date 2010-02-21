require 'test_helper'

class Admin::RecommendationsControllerTest < ActionController::TestCase
  context "on GET to :index" do
    setup {get :index}
    should_respond_with :success
  end
  
  context "on GET to :new" do
    setup {get :new}
    should_respond_with :success
    should_render_template :new
    should_assign_to :recommendation
  end
  
  context "on POST to :create" do
    context "with valid details" do
      setup do 
        attrs = Factory.attributes_for(:recommendation)
        post :create, :recommendation => attrs
      end
      
      should_change "Recommendation.count", :by => 1
      should_redirect_to("Admin recommendations path") {admin_recommendations_path}
    end
    
    context "with invalid details" do
      setup do 
        attrs = Factory.attributes_for(:recommendation, :name => nil)
        post :create, :recommendation => attrs
      end
      
      should_not_change "Recommendation.count"
      should_render_template :new
      should "return error on name" do
        assert assigns(:recommendation).errors.on(:name)
      end
    end
  end
  
  context "on GET to :edit" do
    setup do
      @recommendation = Factory(:recommendation)
      get :edit, :id => @recommendation
    end
    should_respond_with :success
    should_render_template :edit
    should_assign_to :recommendation
  end
end
