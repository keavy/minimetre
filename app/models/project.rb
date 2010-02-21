class Project < ActiveRecord::Base
  validates_presence_of :title
  
  has_attached_file :thumbnail,
                    :styles => { :original => "c180x120"}
                    
                    
  CATEGORIES = { 'pm'     => 'Project Management / Development',
                 'dev'    => 'Technical Consultant / Development',
                 'side'   => 'Side project'
               }
               
  default_scope :order => 'order_num'
end
