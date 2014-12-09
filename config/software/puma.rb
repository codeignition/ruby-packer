
name "puma"
#version "1.0.0"

dependency "ruby"

build do
  gem "install rack -v #{ENV['RACK_VERSION']}"
  gem "install puma -v #{ENV['PUMA_VERSION']}"
  gem "install bundler "
end
