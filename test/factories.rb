Factory.define :category do |f|
  f.name          "dev"
end

Factory.define :project do |f|
  f.title          "a new project"
  f.url            "http://www.project.com"
  f.association    :category
end