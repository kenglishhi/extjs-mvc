# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{extjs-mvc}
  s.version = "0.4.0.j"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ed Spencer and Chris Scott"]
  s.date = %q{2010-03-18}
  s.description = %q{A full-stack, Rails-like MVC for the Ext JS javascript framework (originally known as extmvc/extmvc)}
  s.email = %q{christocracy@gmail.com}
  s.executables = ["extjs-mvc", "run"]
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
     "bin/run",
     "lib/extjs-mvc.rb",
     "lib/extjs-mvc/api.rb",
     "lib/vendor.yml",
     "test/app/vendor/extjs-mvc/App.js",
     "test/app/vendor/extjs-mvc/MVC.js",
     "test/app/vendor/extjs-mvc/Presenter.js",
     "test/app/vendor/extjs-mvc/README.rdoc",
     "test/app/vendor/extjs-mvc/controller/Controller.js",
     "test/app/vendor/extjs-mvc/controller/CrudController.js",
     "test/app/vendor/extjs-mvc/lib/Array.js",
     "test/app/vendor/extjs-mvc/lib/Booter.js",
     "test/app/vendor/extjs-mvc/lib/ClassManager.js",
     "test/app/vendor/extjs-mvc/lib/ControllerClassManager.js",
     "test/app/vendor/extjs-mvc/lib/Dependencies.js",
     "test/app/vendor/extjs-mvc/lib/DispatchMatcher.js",
     "test/app/vendor/extjs-mvc/lib/Dispatcher.js",
     "test/app/vendor/extjs-mvc/lib/Environment.js",
     "test/app/vendor/extjs-mvc/lib/Inflector.js",
     "test/app/vendor/extjs-mvc/lib/ModelClassManager.js",
     "test/app/vendor/extjs-mvc/lib/Route.js",
     "test/app/vendor/extjs-mvc/lib/Router.js",
     "test/app/vendor/extjs-mvc/lib/String.js",
     "test/app/vendor/extjs-mvc/lib/ViewClassManager.js",
     "test/app/vendor/extjs-mvc/lib/notes.txt",
     "test/app/vendor/extjs-mvc/model/AdapterManager.js",
     "test/app/vendor/extjs-mvc/model/Association.js",
     "test/app/vendor/extjs-mvc/model/Base.js",
     "test/app/vendor/extjs-mvc/model/BelongsToAssociation.js",
     "test/app/vendor/extjs-mvc/model/Cache.js",
     "test/app/vendor/extjs-mvc/model/HasManyAssociation.js",
     "test/app/vendor/extjs-mvc/model/Model.js",
     "test/app/vendor/extjs-mvc/model/UrlBuilder.js",
     "test/app/vendor/extjs-mvc/model/adapters/AbstractAdapter.js",
     "test/app/vendor/extjs-mvc/model/adapters/MemoryAdapter.js",
     "test/app/vendor/extjs-mvc/model/adapters/RESTAdapter.js",
     "test/app/vendor/extjs-mvc/model/adapters/RESTJSONAdapter.js",
     "test/app/vendor/extjs-mvc/model/adapters/notes.txt",
     "test/app/vendor/extjs-mvc/model/associations/Association.js",
     "test/app/vendor/extjs-mvc/model/associations/notes.txt",
     "test/app/vendor/extjs-mvc/model/validations/Errors.js",
     "test/app/vendor/extjs-mvc/model/validations/Plugin.js",
     "test/app/vendor/extjs-mvc/model/validations/Validations.js",
     "test/app/vendor/extjs-mvc/notes/Charts.graffle",
     "test/app/vendor/extjs-mvc/overrides/Ext.Component.js",
     "test/app/vendor/extjs-mvc/overrides/Ext.extend.js",
     "test/app/vendor/extjs-mvc/spec/Array.spec.js",
     "test/app/vendor/extjs-mvc/spec/ExtMVC.spec.js",
     "test/app/vendor/extjs-mvc/spec/Model.spec.js",
     "test/app/vendor/extjs-mvc/spec/OS.spec.js",
     "test/app/vendor/extjs-mvc/spec/Router.spec.js",
     "test/app/vendor/extjs-mvc/spec/SpecHelper.js",
     "test/app/vendor/extjs-mvc/spec/String.spec.js",
     "test/app/vendor/extjs-mvc/spec/model/AbstractAdapter.spec.js",
     "test/app/vendor/extjs-mvc/spec/model/Associations.spec.js",
     "test/app/vendor/extjs-mvc/spec/model/Cache.spec.js",
     "test/app/vendor/extjs-mvc/spec/model/RESTAdapter.spec.js",
     "test/app/vendor/extjs-mvc/spec/model/ValidationErrors.spec.js",
     "test/app/vendor/extjs-mvc/spec/model/Validations.spec.js",
     "test/app/vendor/extjs-mvc/spec/model/ValidationsPlugin.spec.js",
     "test/app/vendor/extjs-mvc/spec/suite.html",
     "test/app/vendor/extjs-mvc/specs-old/JSSpec.css",
     "test/app/vendor/extjs-mvc/specs-old/JSSpec.js",
     "test/app/vendor/extjs-mvc/specs-old/all.html",
     "test/app/vendor/extjs-mvc/specs-old/base.js",
     "test/app/vendor/extjs-mvc/specs-old/controller.js",
     "test/app/vendor/extjs-mvc/specs-old/diff_match_patch.js",
     "test/app/vendor/extjs-mvc/specs-old/model.js",
     "test/app/vendor/extjs-mvc/specs-old/route.js",
     "test/app/vendor/extjs-mvc/specs-old/router.js",
     "test/app/vendor/extjs-mvc/specs-old/string.js",
     "test/app/vendor/extjs-mvc/testrunner/JSpecFormatter.js",
     "test/app/vendor/extjs-mvc/testrunner/TestClient.js",
     "test/app/vendor/extjs-mvc/testrunner/TestGrid.js",
     "test/app/vendor/extjs-mvc/testrunner/TestRunner.js",
     "test/app/vendor/extjs-mvc/testrunner/TestViewport.js",
     "test/app/vendor/extjs-mvc/vendor.yml",
     "test/app/vendor/extjs-mvc/vendor/ext-3.1.1/vendor.yml",
     "test/app/vendor/extjs-mvc/view/FormWindow.js",
     "test/app/vendor/extjs-mvc/view/HasManyEditorGridPanel.js",
     "test/app/vendor/extjs-mvc/view/scaffold/Edit.js",
     "test/app/vendor/extjs-mvc/view/scaffold/Index.js",
     "test/app/vendor/extjs-mvc/view/scaffold/New.js",
     "test/app/vendor/extjs-mvc/view/scaffold/ScaffoldFormPanel.js",
     "test/helper.rb",
     "test/test_extjs-mvc.rb"
  ]
  s.homepage = %q{http://github.com/christocracy/extjs-mvc}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A Rails-like, full-stack MVC framework for the Ext JS javascript framework}
  s.test_files = [
    "test/helper.rb",
     "test/test_extjs-mvc.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<xmvc>, [">= 0.1.6"])
      s.add_runtime_dependency(%q<extjs>, [">= 0.1.1"])
      s.add_runtime_dependency(%q<git>, [">= 0"])
      s.add_runtime_dependency(%q<thor>, [">= 0.13.4"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<xmvc>, [">= 0.1.6"])
      s.add_dependency(%q<extjs>, [">= 0.1.1"])
      s.add_dependency(%q<git>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0.13.4"])
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<xmvc>, [">= 0.1.6"])
    s.add_dependency(%q<extjs>, [">= 0.1.1"])
    s.add_dependency(%q<git>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0.13.4"])
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end

