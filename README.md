Creating Ruby install packages with Omnibus

bundle install
bundle install --binstubs
bin/omnibus clean ruby --purge
bin/omnibus build project ruby
