# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','fos','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'fos'
  s.version = Fos::VERSION
  s.author = 'Danny McAlerney'
  s.email = 'dmcalerney@gmail.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Frontier Outdoor Supply (FOS) LoyaltyPlus CLI'
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','fos.rdoc']
  s.rdoc_options << '--title' << 'fos' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'fos'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.16.1')
end
