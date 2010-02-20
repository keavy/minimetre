require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  should_validate_presence_of :title
  should_have_attached_file :thumbnail
end
