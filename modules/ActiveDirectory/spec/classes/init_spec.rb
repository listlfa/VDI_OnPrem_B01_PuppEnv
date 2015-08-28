require 'spec_helper'
describe 'vdi' do

  context 'with defaults for all parameters' do
    it { should contain_class('vdi') }
  end
end
