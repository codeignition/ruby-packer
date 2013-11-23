name "ruby"
version "2.0.0-p353"

dependency "zlib"
dependency "ncurses"
dependency "readline"
dependency "openssl"
dependency "libyaml"
dependency "libiconv"

source :url => "http://ftp.ruby-lang.org/pub/ruby/2.0/ruby-#{version}.tar.gz",
       :md5 => "0672e5af309ae99d1703d0e96eff8ea5"

relative_path "ruby-#{version}"

env = {
        "CFLAGS" => "-I#{install_dir}/embedded/include -O3 -g -pipe",
        "LDFLAGS" => "-Wl,-rpath,#{install_dir}/embedded/lib -L#{install_dir}/embedded/lib",
        "RUBYOPT" => nil,
        "BUNDLE_BIN_PATH" => nil,
        "BUNDLE_GEMFILE" => nil,
        "GEM_PATH" => nil,
        "GEM_HOME" => nil
      }

build do
  command ["./configure",
           "--prefix=#{install_dir}/embedded",
           "--with-out-ext=fiddle",
           "--enable-shared",
#           "--enable-libedit",
           "--with-ext=psych",
           "--disable-install-doc",
           "--with-opt-dir=#{install_dir}/embedded"].join(" "), :env => env

  command "make -j #{max_build_jobs}", :env => env
  command "make install", :env => env
end
