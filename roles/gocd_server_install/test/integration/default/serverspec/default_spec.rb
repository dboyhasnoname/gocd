require 'serverspec'

set :backend, :exec

describe command('systemctl status go-server') do
  its(:stdout) { should contain('active') }
end

describe service('firewalld') do
  it { should be_running }
end

describe command('systemctl status ufw') do
  its(:stdout) { should contain('active') }
end

describe file('/etc/default/ufw') do
  its(:content) { should match /IPV6=no/ }
end

describe command('netstat -an | grep 8153') do
  its(:stdout) { should contain('LISTEN') }
end

describe command('netstat -an | grep 8154') do
  its(:stdout) { should contain('LISTEN') }
end

