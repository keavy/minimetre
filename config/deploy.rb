capfile = File.expand_path("~/Sites/minimetre/library/deploy.rb")
load(capfile) if File.exists?(capfile)


Dir[File.join(File.dirname(__FILE__), '..', 'vendor', 'gems', 'hoptoad_notifier-*')].each do |vendored_notifier|
  $: << File.join(vendored_notifier, 'lib')
end

require 'hoptoad_notifier/capistrano'
