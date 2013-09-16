sudo rm -rf /opt/ruby/
bin/omnibus clean ruby --purge
sudo mkdir /opt/ruby
sudo chown vagrant:vagrant /opt/ruby
bin/omnibus build project ruby
