# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ans/constant_definer/version'

Gem::Specification.new do |spec|
  spec.name          = "ans-constant_definer"
  spec.version       = Ans::ConstantDefiner::VERSION
  spec.authors       = ["sakai shunsuke"]
  spec.email         = ["sakai@ans-web.co.jp"]
  spec.description   = %q{定数の定義メソッドを提供することで使用に関して一定の規約を設ける}
  spec.summary       = %q{定数の定義、使用に関して一定の規約を設ける}
  spec.homepage      = "https://github.com/answer/ans-constant_definer"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
