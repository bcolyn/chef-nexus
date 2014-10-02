require 'spec_helper'

describe service('nexus') do
  it { should be_running }
end

describe port(8080) do
  it { should be_listening }
end

describe user('nexus') do
  it { should exist }
  it { should have_home_directory '/opt/nexus' }
end

describe file('/data/nexus/conf/nexus.xml') do
  its(:content) { should include '<id>central</id>' }
end