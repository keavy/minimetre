# == Schema Information
# Schema version: 20100222085128
#
# Table name: recommendations
#
#  id         :integer(4)      not null, primary key
#  message    :text
#  name       :string(255)
#  title      :string(255)
#  company    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  live       :boolean(1)      default(TRUE)
#

class Recommendation < ActiveRecord::Base
  validates_presence_of :message
  validates_presence_of :name
  
  named_scope :live, :conditions => { :live => true }
  
  def self.random
    if (c = count) != 0
      find(:first, :offset =>rand(c))
    end
  end
  
  def self.remaining(exclude)
    find(:all, :conditions => "id != #{exclude}")
  end
  
  def from
    [name,title,company].reject(&:blank?) * ', '
  end
end
