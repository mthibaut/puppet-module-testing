require 'spec_helper'

describe "autofs" do

  let(:facts) {{ :osfamily => 'RedHat' }}

  it { should include_class('autofs::package') }
  it { should include_class('autofs::config') }
  it { should include_class('autofs::service') }

end
