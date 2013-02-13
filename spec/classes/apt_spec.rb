require 'spec_helper'

describe 'apt' do
  context 'default' do
    it {
      should contain_file('/etc/apt/apt.conf').with({
        'ensure' => 'file',
        'owner'  => 'root',
        'group'  => 'root',
        'mode'   => '0644',
      })
    }

    it {
      should contain_package('apt').with({
        'ensure' => 'installed'
      })
    }
  end
end
