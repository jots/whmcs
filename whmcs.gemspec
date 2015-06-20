$:.unshift 'lib'

require 'whmcs/version'

Gem::Specification.new do |s|
  s.name             = 'whmcs'
  s.version          = WHMCS::Version
  s.date             = Time.now.strftime('%Y-%m-%d')
  s.summary          = '(updated) WHMCS API Ruby bindings'
  s.homepage         = 'https://github.com/charliedrage/whmcs'
  s.authors          = ['Charlie Drage']
  s.email            = 'charlie@charliedrage.com'

  s.files           += Dir['lib/**/*']

  s.add_dependency('crack', '= 0.1.8')

  s.add_development_dependency('shoulda')

  s.extra_rdoc_files = ['README.markdown']
  s.rdoc_options     = ["--charset=UTF-8"]

  s.description = <<-DESC
  (updated) WHMCS API Ruby bindings
  DESC
end
