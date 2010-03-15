module ExtJS
  module MVC
      
    class API < Thor
      include Thor::Actions
      
      desc "secretary", "Returns vendor assets; css, js, images, sass, haml, html...whatever.  Returns a Sprockets::Secretary"
      def secretary
        say_status "ExtJS::MVC", "secretary"
        
        #TODO Figure out a std vendor.yml loading mechanism
        # load_paths? 
        root = File.expand_path(File.join(options[:root], "extjs-mvc"))
        begin
          config = YAML.load_file(File.join(root, "vendor.yml"))
        rescue StandardError => e
          raise Xmvc::VendorFileNotFound.new("Failed to load vendor file 'vendor/extjs-mvc/vendor.yml'")
        end
        
        Sprockets::Secretary.new({
          :source_files => config["javascripts"],
          :root => root
        })
      end
    
      ##
      # This task is executed by Xmvc::Generator::App when the "generate app" task is executed.
      # Xmvc provides the /vendor directory as the param
      #
      desc "install", "Install extjs-mvc framework"
      def install(vendor_root)
        fancy_name = File.join(File.basename(vendor_root), VENDOR_NAME)
      
        say_status "git clone", "#{GIT_URL} -> #{fancy_name}"
      
        # Clone the extjs-mvc-js repo!
        path = File.join(vendor_root, VENDOR_NAME)
        Git.clone(GIT_URL, path)
      
        # report to console which files were created.
        Dir["#{path}/**/*.*"].each do |f|
          say_status :create, File.join(fancy_name, File.basename(f))
        end
      end
    end
  end
end