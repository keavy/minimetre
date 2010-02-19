class Project < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :category
  
  has_attached_file :thumbnail,
                    :styles => { :original => "c180x120"}
end
