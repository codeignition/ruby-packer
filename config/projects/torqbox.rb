
name "torqbox"
maintainer "Sinister Light"
homepage "sinisterlight.com"

replaces        "torqbox"
install_path    "/opt/torqbox"
build_version   "0.1.4"
build_iteration 1

dependency "preparation"

dependency "torqbox"

dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
