
name "ruby"

maintainer "Sinister Light"
homepage "sinisterlight.com"

replaces        "ruby"
install_path    "/opt/ruby"
build_version   "2.0.0-p195"
build_iteration 1

dependency "preparation"

dependency "ruby"

dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
