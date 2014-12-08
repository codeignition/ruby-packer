
name "puma"
maintainer "Sinister Light"
homepage "sinisterlight.com"

replaces        "puma"
install_path    "/opt/puma"
build_version   ENV['PUMA_VERSION']
build_iteration 1

dependency "preparation"

dependency "puma"

dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
