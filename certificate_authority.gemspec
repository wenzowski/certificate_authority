# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'certificate_authority/version'

Gem::Specification.new do |gem|
  gem.authors       = ['Chris Chandler']
  gem.email         = ['chris@flatterline.com']
  # gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{Ruby gem for managing the core functions outlined in RFC-3280 for PKI}
  gem.homepage      = 'http://github.com/cchandler/certificate_authority'

  gem.executables   = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split('\n')
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split('\n')
  gem.name          = 'certificate_authority'
  gem.require_paths = ['lib']
  gem.version       = CertificateAuthority::VERSION

  gem.add_dependency('activemodel', ['>= 3.0.6'])
  gem.add_development_dependency('rake', '~> 0.9.2.2')
  gem.add_development_dependency('rspec')

  gem.add_development_dependency('simplecov')
  gem.add_development_dependency('simplecov-gem-adapter')

  gem.add_development_dependency('guard')
  gem.add_development_dependency('guard-rspec')
  gem.add_development_dependency('ruby_gntp')
end
