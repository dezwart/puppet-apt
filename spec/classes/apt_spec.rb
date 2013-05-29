require 'spec_helper'

describe 'apt' do
  context 'default' do
    files = [
      '/etc/apt/apt.conf'
    ]

    packages = [
      'apt'
    ]

    files.map {
      |x| it {
        should contain_file(x).with({
          'ensure' => 'file',
          'owner'  => 'root',
          'group'  => 'root',
          'mode'   => '0644',
        })
      }
    }

    packages.map {
      |x| it {
        should contain_package(x).with({
          'ensure' => 'installed'
        })
      }
    }
  end
end
