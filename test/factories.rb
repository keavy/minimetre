Factory.define :project do |f|
  f.title          "a new project"
  f.url            "http://www.project.com"
  f.category       "dev"
end

Factory.define :recommendation do |f|
  f.name          "Joe Smith"
  f.message       "awesome"
end