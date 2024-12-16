# -*- encoding: utf-8 -*-
Gem::Specification.new do |spec|
  spec.name        = "pretty-logger"
  spec.version      = PrettyLogger::VERSION
  spec.authors     = ["[Mehdi Daalvand, Majid Alaeinia]"]
  spec.email      = ["[mdaalvand@gmail.com, alaeinia.majid@gmail.com]"]
  spec.homepage    = "https://github.com/majidalaeinia/pretty-log"
  spec.summary     = "Pretty File Logging for Rails applications"
  spec.description = "Provides a module with methods for logging messages to files with different severity levels."

  spec.files = Dir[File.expand_path('**/*.rb', __dir__)]
  spec.bindir        = 'exe'
  spec.executables   = []
end