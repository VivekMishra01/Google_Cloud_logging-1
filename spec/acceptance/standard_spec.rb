
#puppet-gcloudsdk/spec/acceptance/standard_spec.rb
require 'spec_helper_acceptance'

describe 'gclogging class' do

  context 'default parameters' do
    # Using puppet_apply as a helper
    it 'should work with no errors based on the example' do
	 pp = <<-EOS
        class { 'gclogging':}       
      EOS

      # Run it twice and test for idempotency
      expect(apply_manifest(pp).exit_code).to_not eq(1)
      expect(apply_manifest(pp).exit_code).to eq(0)
    end
end
end