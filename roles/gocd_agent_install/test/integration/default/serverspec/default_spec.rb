require 'serverspec'

set :backend, :exec

describe command('systemctl status go-agent') do
  its(:stdout) { should contain('active') }
end

describe command('grep agent.auto.register.key /var/lib/go-agent/config/autoregister.properties') do
  its(:stdout) { should contain('cc26e61d-3169-49f6-ad76-99fb8517238a') }
end

describe file('/etc/default/go-agent') do
  its(:content) { should match /192.168.56.101:8154/ }
end
