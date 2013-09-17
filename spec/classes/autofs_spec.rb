require 'spec_helper'

describe "autofs" do

  describe "on osfamily RedHat" do
    let(:facts) {{ :osfamily => 'RedHat' }}

    it { should include_class('autofs::package') }
    it { should include_class('autofs::config') }
    it { should include_class('autofs::service') }

    it do
      should contain_package('autofs')
      should contain_service('autofs') \
             .with_ensure('running')   \
             .with_alias('autofs')
    end

  end

  describe "on osfamily Debian" do
    let(:facts) {{ :osfamily => 'Debian' }}

    it do
      expect {
        should include_class('autofs::package')
      }.to raise_error(Puppet::Error, /osfamily not supported:/)
    end
  end
end
