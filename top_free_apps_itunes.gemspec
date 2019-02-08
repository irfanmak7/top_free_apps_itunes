
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "top_free_apps_itunes/version"

Gem::Specification.new do |spec|
  spec.name          = "top_free_apps_itunes"
  spec.version       = TopFreeAppsItunes::VERSION
  spec.authors       = ["Irfan Maknojia"]
  spec.email         = ["imak_7@yahoo.com"]

  spec.summary       = %q{This is a command line tool to help locate the top free 100 apps on iTunes.}
  spec.description   = %q{This is a command line tool to help locate the top free 100 apps on iTunes.}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  
  spec.bindir        = "bin"
  spec.executables   = ["top_free_apps_itunes"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"
end
