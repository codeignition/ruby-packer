
name "puma"
#version "1.0.0"

dependency "ruby"

build do
  gem "install puma"
  gem "install bundler"
end
