require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "extjs-mvc"
    gem.summary = %Q{A Rails-like, full-stack MVC framework for the Ext JS javascript framework}
    gem.description = %Q{A full-stack, Rails-like MVC for the Ext JS javascript framework (originally known as extmvc/extmvc)}
    gem.email = "christocracy@gmail.com"
    gem.homepage = "http://github.com/christocracy/extjs-mvc"
    gem.authors = ["Ed Spencer and Chris Scott"]
    gem.add_dependency "xmvc", ">=0.1.6"
    gem.add_dependency "extjs", ">=0.1.1"
    gem.add_dependency "git"
    gem.add_dependency "thor", ">=0.13.4"
    gem.add_development_dependency "thoughtbot-shoulda", ">= 0"
    gem.files =  FileList["[A-Z]*", "{bin,lib,test,config}/**/*"]
    
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "extjs-mvc-gem #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
