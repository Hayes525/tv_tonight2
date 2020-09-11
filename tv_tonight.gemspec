require_relative 'lib/tv_tonight/version'

Gem::Specification.new do |spec|
  spec.name          = "tv_tonight"
  spec.version       = TvTonight::VERSION
  spec.authors       = ["hayes525"]
  spec.email         = ["nosafoundation@gmail.com"]

  spec.summary       = %q{Summary}
  
  spec.homepage      = "Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = git@github.com:Hayes525/tv_tonight.git
  spec.metadata["changelog_uri"] = jordanhayes.com

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
