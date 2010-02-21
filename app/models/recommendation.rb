class Recommendation < ActiveRecord::Base
  validates_presence_of :message
  validates_presence_of :name
  
  #named_scope :random, :conditions => "ORDER BY 'rand()'"
  
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
