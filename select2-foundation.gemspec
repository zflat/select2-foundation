$:.push File.expand_path("../lib", __FILE__)

require "select2-foundation/version"

Gem::Specification.new do |s|
  s.name        = "select2-foundation"
  s.version     = Select2Foundation::VERSION
  s.authors     = ["William Wedler"]
  s.email       = ["wwedler@riseup.net"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Select2Foundation."
  s.description = "TODO: Description of Select2Foundation."
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "sass", [">= 3.3.0", "< 3.5"]
  s.add_dependency "railties", [">= 3.1.0"]
  s.add_dependency "select2-rails", "~> 4.0.1"
  s.add_dependency "foundation-rails", ">= 5"

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rails"
  s.add_development_dependency "rake"
end
