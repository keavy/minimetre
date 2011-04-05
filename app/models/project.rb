# == Schema Information
# Schema version: 20100223101624
#
# Table name: projects
#
#  id                     :integer(4)      not null, primary key
#  order_num              :integer(4)      default(0)
#  title                  :string(255)
#  category               :string(255)
#  url                    :string(255)
#  client                 :string(255)
#  thumbnail_file_name    :string(255)
#  thumbnail_content_type :string(255)
#  thumbnail_file_size    :integer(4)
#  thumbnail_created_at   :datetime
#  thumbnail_updated_at   :datetime
#  created_at             :datetime
#  updated_at             :datetime
#  live                   :boolean(1)      default(TRUE)
#

class Project < ActiveRecord::Base
  validates_presence_of :title

  has_attached_file :thumbnail,
                    :styles => { :original => "180x120"}

  CATEGORIES = { 'pm'     => 'Project Management / Development',
                 'dev'    => 'Technical Consultant / Development',
                 'ruby'   => 'Ruby Development',
                 'side'   => 'Side project'

               }
  def self.live
    where(:live => true )
  end

  def self.ordered
    order(:order_num)
  end
end
