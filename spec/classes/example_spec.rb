require 'spec_helper'

describe 'gblbar1_home_dir' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context "gblbar1_home_dir class without any parameters" do
          it { is_expected.to compile.with_all_deps }

          it { is_expected.to contain_class('gblbar1_home_dir::params') }
          it { is_expected.to contain_class('gblbar1_home_dir::install').that_comes_before('gblbar1_home_dir::config') }
          it { is_expected.to contain_class('gblbar1_home_dir::config') }
          it { is_expected.to contain_class('gblbar1_home_dir::service').that_subscribes_to('gblbar1_home_dir::config') }

          it { is_expected.to contain_service('gblbar1_home_dir') }
          it { is_expected.to contain_package('gblbar1_home_dir').with_ensure('present') }
        end
      end
    end
  end

  context 'unsupported operating system' do
    describe 'gblbar1_home_dir class without any parameters on Solaris/Nexenta' do
      let(:facts) do
        {
          :osfamily        => 'Solaris',
          :operatingsystem => 'Nexenta',
        }
      end

      it { expect { is_expected.to contain_package('gblbar1_home_dir') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
