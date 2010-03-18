require 'git'
require 'thor'
require 'xmvc'
require 'xmvc/cli'
require 'extjs'

##
# This is the extjs-mvc Thor task which install the extjs-mvc-js javascript source via Github
#
module ExtJS
  module MVC
    
    VERSION       = "0.4.0.a"
    
    autoload :API, 'extjs-mvc/api'
    
  end
end
