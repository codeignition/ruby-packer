
name "torqbox"

dependency "jruby"

env = {
        "JAVA_HOME" => "#{install_dir}/embedded/jre/"
      }

build do
  command "#{install_dir}/embedded/jruby/bin/jruby -S gem install bundler", "env" => env
  command "#{install_dir}/embedded/jruby/bin/jruby -S gem install torqbox", "env" => env
end
