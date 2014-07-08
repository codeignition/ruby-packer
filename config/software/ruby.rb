name "ruby"
version ENV['RUBY_VERSION']

dependency "zlib"
dependency "ncurses"
dependency "readline"
dependency "openssl"
dependency "libyaml"
dependency "libiconv"


source :url => ENV['RUBY_DOWNLOAD_URL'],
       :md5 => ENV['MD5_RUBY']

relative_path "ruby-#{ENV['RUBY_VERSION']}"

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
