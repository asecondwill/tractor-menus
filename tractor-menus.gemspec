# frozen_string_literal: true


require_relative "lib/tractor_menus/version"

Gem::Specification.new do |spec|
  spec.name = "tractor-menus"
  spec.version = TractorMenus::VERSION
  spec.authors = ["Will"]
  spec.email = ["will@kindleman.com.au"]

  spec.summary = "Menu management for Tractor CMS"
  spec.description = "A menu management system for the Tractor CMS"
  spec.homepage = "https://www.willbarker.dev"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/asecondwill/tractor-menus"
  spec.metadata["changelog_uri"] = "https://github.com/asecondwill/tractor-menus"

  spec.files = Dir["app/**/*", "lib/**/*", "config/**/*", "db/**/*"]
  
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ancestry"
  spec.add_dependency "acts_as_list"
  
  # Depend on the main tractor gem
  spec.add_dependency "tractor"

  
end