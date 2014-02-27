
name "puma"
#version "1.0.0"

dependency "ruby"

build do
  gem "install puma -v 2.7.1"
  gem "install bundler -v "
end
