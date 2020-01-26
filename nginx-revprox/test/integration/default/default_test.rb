# InSpec test for recipe nginx-revprox::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

require 'spec_helper'

# We need more tests here
# https://serverspec.org/resource_types.html

describe 'nginx-revprox::default' do
  describe package('nginx') do
    it { should be_installed }
  end

  describe service('nginx') do
    it { should be_enabled }
    it { should be_running }
  end
end
