require 'test_helper'

class RecommendationTest < ActiveSupport::TestCase
  should_validate_presence_of :message
  should_validate_presence_of :name
end
