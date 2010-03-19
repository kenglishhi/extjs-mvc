require 'helper'

class TestVendorInstaller < Test::Unit::TestCase
  VENDOR_ROOT = "test/app/vendor"
  
  context "ExtJS Vendor" do
    should "install" do
      path = "test/app/vendor/#{ExtJS::MVC::API.vendor_name}"
      FileUtils.rm_rf(path) if File.exists? path
      vendor = ExtJS::MVC::API.install({
        :root => VENDOR_ROOT
      })
      assert File.exists?(File.join(VENDOR_ROOT, "#{ExtJS::MVC::API.vendor_name}/vendor.yml"))
    end
    
    should "load" do
      vendor = ExtJS::MVC::API.load({
        :root => VENDOR_ROOT
      })
      assert vendor.config.kind_of?(Hash) and vendor.config["name"] == ExtJS::MVC::API.vendor_name
    end
    
    should "return secretary" do
      vendor = ExtJS::MVC::API.load({
        :root => VENDOR_ROOT
      })
      secretary = vendor.invoke(:secretary)
      assert secretary.instance_of?(Sprockets::Secretary)
    end
    
    should "secretary should contain files" do  
      vendor = ExtJS::MVC::API.load({
        :root => "test/app/vendor"
      })
      secretary = vendor.invoke(:secretary)
      assert secretary.preprocessor.source_files.length > 0
    end

    should "Have host default to 'public' when not defined in vendor.yml" do
        vendor = ExtJS::MVC::API.load({
            :root => "test/app/vendor"
        })
        assert vendor.config['host'] == "public"
    end
  end
end
