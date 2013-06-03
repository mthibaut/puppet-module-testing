source 'https://rubygems.org'

puppetversion = ENV.key?('PUPPET_VERSION') ? "~> #{ENV['PUPPET_VERSION']}" : ['~> 3']
gem 'puppet', puppetversion

gem 'rake'
gem 'puppet-lint'
gem 'rspec'
gem 'rspec-puppet', '= 0.1.6'
gem 'puppetlabs_spec_helper'
gem 'rspec-puppet-augeas', :git => 'git://github.com/vStone/rspec-puppet-augeas', :branch => 'feature/custom_lensdir'
gem 'ruby-augeas'
