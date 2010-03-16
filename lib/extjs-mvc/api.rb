module ExtJS
  module MVC 
    
    VENDOR_NAME = "extjs-mvc"
    
    class API < Thor
      include Thor::Actions
      
      desc "secretary", "Returns vendor assets; css, js, images, sass, haml, html...whatever.  Returns a Sprockets::Secretary"
      def secretary
        say_status "ExtJS::MVC", "secretary"
        Sprockets::Secretary.new({
          :source_files => config["javascripts"],
          :root => root
        })
      end
      
      desc "config", "Returns config from vendor.yml"
      def config
        config = {}
        root = File.expand_path(File.join(options[:root], ExtJS::MVC::VENDOR_NAME))
        path = File.join(root, "vendor.yml")
        if File.exists?(path)
          config = YAML.load_file(path)
        else
          #raise Xmvc::VendorFileNotFound.new("Failed to load vendor file 'vendor/extjs-mvc/vendor.yml'")
          puts "failed to load ExtJS::MVC config #{path}"
        end
        config
      end
      
      ##
      # This task is executed by Xmvc::Generator::App when the "generate app" task is executed.
      # Xmvc provides the /vendor directory as the param
      #
      desc "install", "Install extjs-mvc framework"
      def install
        fancy_name = File.join(File.basename(options[:root]), VENDOR_NAME)
        say_status "git clone", "#{GIT_URL} -> #{fancy_name}"
      
        # Clone the extjs-mvc-js repo!
        path = File.join(options[:root], VENDOR_NAME)
        ##
        # UNCOMMENT THIS TO INSTALL FROM GIT
        #
        Git.clone(GIT_URL, path)  
        # report to console which files were created.
        Dir["#{path}/**/*.*"].each do |f|
          say_status :create, File.join(fancy_name, File.basename(f))
        end
      end
    end
  end
end