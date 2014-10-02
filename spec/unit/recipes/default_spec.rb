require 'spec_helper'

describe 'nexus-oss::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates a user' do
    expect(chef_run).to create_user('nexus')
  end

  #TODO ARK?

  it 'creates a data dir' do
    expect(chef_run).to create_directory('/data/nexus')
  end

  it 'configures nexus.properties file' do
    expect(chef_run).to render_file('/opt/nexus/conf/nexus.properties').
      with_content('nexus-work=/data/nexus')
  end

  it 'creates an init script' do
    expect(chef_run).to render_file('/etc/init.d/nexus').
      with_content('export RUNASUSER=nexus')
  end

  it 'creates and starts a service' do
    expect(chef_run).to start_service('nexus')
  end

end