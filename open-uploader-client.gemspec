# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uploader/client/version'

Gem::Specification.new do |spec|
  spec.name          = "open-uploader-client"
  spec.version       = Uploader::Client::VERSION
  spec.authors       = ["Kazuhiro Yamada"]
  spec.email         = ["yamadakazu45@gmail.com"]
  spec.description   = %q{OpenUploaderClient}
  spec.summary       = %q{OpenUploaderClient}
  spec.homepage      = "https://github.com/k-yamada/open-uploader-client"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
