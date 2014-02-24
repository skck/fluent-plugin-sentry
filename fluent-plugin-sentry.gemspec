# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-sentry"
  spec.version       = "0.0.1"
  spec.authors       = ["Kentaro Yoshida"]
  spec.email         = ["y.ken.studio@gmail.com"]
  spec.summary       = %q{Fluentd output plugin to aggregate errors/exception to sentry which are a realtime event logging and aggregation platform.}
  spec.homepage      = "https://github.com/y-ken/fluent-plugin-sentry"
  spec.license       = "Apache License, Version 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "webmock"
  spec.add_runtime_dependency "fluentd"
  spec.add_runtime_dependency "sentry-raven"
  spec.add_runtime_dependency "capture_stdout"
end