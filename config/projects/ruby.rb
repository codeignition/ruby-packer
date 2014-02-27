name "ruby"

maintainer "Sinister Light"
homepage "sinisterlight.com"

replaces        "ruby"
install_path    "/opt/ruby"
build_version   "2.1.0"
build_iteration 1

dependency "preparation"

dependency "ruby"
dependency "bundler"

dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
