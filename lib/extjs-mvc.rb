require 'git'
require 'thor'
require 'xmvc'
require 'xmvc/cli'
require 'extjs'
require 'extjs-mvc/api'

##
# This is the extjs-mvc Thor task which install the extjs-mvc-js javascript source via Github
#
module ExtJS
  module MVC
    
    VERSION       = "0.4.0.a"
     
    ROOT          = File.dirname(__FILE__)

    VENDOR_NAME   = 'extjs-mvc'

    CONFIG_PATH   = File.join(ROOT, "vendor.yml")
    
    GIT_URL       = 'http://github.com/christocracy/extjs-mvc-src.git'
    
    autoload :API, 'extjs-mvc/api'
    
    class << self
      def config
        @config ||= YAML.load(File.read(CONFIG_PATH)).to_mash
      end
    end
  end
end
