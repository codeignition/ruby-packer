name "jruby"

maintainer "Sinister Light"
homepage "sinisterlight.com"

replaces        "jruby"
install_path    "/opt/jruby"
build_version   "1.7.9"
build_iteration 1

dependency "preparation"

dependency "jruby"

dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
