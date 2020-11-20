require_relative 'lib/rbbcc/hello/version'

Gem::Specification.new do |spec|
  spec.name          = "rbbcc-hello"
  spec.version       = Rbbcc::Hello::VERSION
  spec.authors       = ["Uchio Kondo"]
  spec.email         = ["udzura@udzura.jp"]

  spec.summary       = %q{An example RbBCC plugin}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/udzura/rbbcc"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]
  spec.add_dependency 'rbbcc'
end
