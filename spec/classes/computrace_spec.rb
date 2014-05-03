require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'computrace' do
  it do
    should contain_class('computrace')
    should_not contain_package('computrace')
  end

  context "credential is provided" do
    let(:params) {{:username => "test", :password => "test"}}

    it do
      should contain_package('computrace').with({
        :provider => 'compressed_pkg',
        :source   => "http://test:test@artifactory.ctlt.ubc.ca/artifactory/ctlt-release-local/Computrace/RPClient.pkg.zip",
      })
    end
  end
end
