
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "handsontable_rails5/version"

Gem::Specification.new do |spec|
  spec.name          = "handsontable_rails5"
  spec.version       = HandsontableRails5::VERSION
  spec.authors       = ["Brentan Alexander Consulting LLC"]
  spec.email         = ["me@brentanalexander.com"]

  spec.summary       = "Bundles the Handsontable community edition in to rails."
  spec.description   = "Bundles the Handsontable community edition from https://handsontable.com/ into a rails app by adding handontable JS and CSS files to the asset pipeline.  Gem version is set to match handsontable version.  Full package is included in minified form (full.min.js and full.min.css from the handontable distribution)."
  spec.homepage      = "https://www.github.com/brentan/handsontable_rails5"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://www.github.com/brentan/handsontable_rails5"
    spec.metadata["changelog_uri"] = "https://www.github.com/brentan/handsontable_rails5/commits/master"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "rails", ">= 5.0"
end
