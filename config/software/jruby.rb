name "jruby"
version "1.7.9"

dependency "rsync"
dependency "jre"

jruby_source = { 
                  "1.7.3" => {
                      :url => "http://jruby.org.s3.amazonaws.com/downloads/1.7.3/jruby-bin-1.7.3.tar.gz",
                      :md5 => "f0adf8ccee6f6777f7ab8e5e1d7a1f47"
                  },
                  "1.7.9" => {
                      :url => "http://jruby.org.s3.amazonaws.com/downloads/1.7.9/jruby-bin-1.7.9.tar.gz",
                      :md5 => "b2e44f1f44837c07068ee453a89f4b55"
                  }
}

source jruby_source[version]

relative_path "jruby-#{version}"

build do
  command "#{install_dir}/embedded/bin/rsync -a . #{install_dir}/embedded/jruby/"
end
