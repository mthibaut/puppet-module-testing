require 'spec_helper'

describe "autofs" do

  it { should include_class('autofs::package') }
  it { should include_class('autofs::config') }
  it { should include_class('autofs::service') }

end
