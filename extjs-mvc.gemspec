# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{extjs-mvc}
  s.version = "0.4.0.g"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ed Spencer and Chris Scott"]
  s.date = %q{2010-03-15}
  s.default_executable = %q{extjs-mvc}
  s.description = %q{A full-stack, Rails-like MVC for the Ext JS javascript framework (originally known as extmvc/extmvc)}
  s.email = %q{christocracy@gmail.com}
  s.executables = ["extjs-mvc"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/extjs-mvc",
     "lib/extjs-mvc.rb",
     "lib/extjs-mvc/api.rb",
     "lib/vendor.yml",
     "test/helper.rb",
     "test/test_extjs-mvc-gem.rb"
  ]
  s.homepage = %q{http://github.com/christocracy/extjs-mvc}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A Rails-like, full-stack MVC framework for the Ext JS javascript framework}
  s.test_files = [
    "test/helper.rb",
     "test/test_extjs-mvc-gem.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<xmvc>, [">= 0.1.6"])
      s.add_runtime_dependency(%q<extjs>, [">= 0.1.1"])
      s.add_runtime_dependency(%q<git>, [">= 0"])
      s.add_runtime_dependency(%q<thor>, [">= 0.13.4"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    else
      s.add_dependency(%q<xmvc>, [">= 0.1.6"])
      s.add_dependency(%q<extjs>, [">= 0.1.1"])
      s.add_dependency(%q<git>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0.13.4"])
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<xmvc>, [">= 0.1.6"])
    s.add_dependency(%q<extjs>, [">= 0.1.1"])
    s.add_dependency(%q<git>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0.13.4"])
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  end
end

