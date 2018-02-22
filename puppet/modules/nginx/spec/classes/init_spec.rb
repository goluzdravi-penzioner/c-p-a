require 'spec_helper'
describe 'sonar3' do

  context 'with defaults for all parameters' do
    it { should contain_class('sonar3') }
  end
end
