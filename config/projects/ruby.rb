name "ruby"

maintainer "Sinister Light"
homepage "sinisterlight.com"

replaces        "ruby"
install_path    "/opt/ruby"
build_version   ENV['RUBY_VERSION']
build_iteration 1

dependency "preparation"

dependency "ruby"
dependency "bundler"

dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
