# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "formize/version"

Gem::Specification.new do |s|
  s.name = "formize"
  s.version = Formize::VERSION
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.author = "Brice Texier"
  s.email  = "burisu@oneiros.fr"
  s.summary = "Form helpers"
  s.description = "Adds some form helper to Rails (>= 3.2)."
  s.extra_rdoc_files = ["LICENSE", "README.rdoc" ]
  s.test_files = `git ls-files test`.split("\n") 
  exclusions = [ "#{s.name}.gemspec", ".travis.yml", ".gitignore", "Gemfile", "Gemfile.lock", "Rakefile", "test/ci/Gemfile.rails-3.1", "test/ci/Gemfile.rails-3.2", "test/ci"]
  s.files = `git ls-files`.split("\n").delete_if{|f| exclusions.include?(f)}
  s.homepage = "http://github.com/burisu/formize"
  s.license = "MIT"
  s.require_path = "lib"

  add_runtime_dependency = (s.respond_to?(:add_runtime_dependency) ? :add_runtime_dependency : :add_dependency)
  s.add_dependency("rails", ">= 3.2")
  s.add_dependency("jquery-rails", ">= 3")
  s.add_dependency("jquery-ui-rails", ">= 5")
  s.add_development_dependency("rake", ">= 10")
  s.add_development_dependency("bundler", ">= 1")
  s.add_development_dependency("minitest")
end

