module ExtJS
  module MVC 
    
    GIT_URL = 'http://github.com/christocracy/extjs-mvc-src.git'
    
    class API < Xmvc::Vendor
      include Thor::Actions
      
      vendor_name "extjs-mvc"
      
      ##
      # This task is executed by Xmvc::Generator::App when the "generate app" task is executed.
      # Xmvc provides the /vendor directory as the param
      #
      desc "install", "Install extjs-mvc framework"
      def install
        fancy_name = File.join(File.basename(options[:root]), self.class.vendor_name)
        say_status "git clone", "#{GIT_URL} -> #{fancy_name}"
      
        # Clone the extjs-mvc-js repo!
        ##
        # UNCOMMENT THIS TO INSTALL FROM GIT
        #
        Git.clone(GIT_URL, ".")  
        # report to console which files were created.
        Dir["./**/*.*"].each do |f|
          say_status :create, File.join(fancy_name, File.basename(f))
        end
      end
    end
  end
end