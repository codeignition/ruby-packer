name "readline"
version "6.2"

dependency "libgcc"

source :url => "ftp://ftp.gnu.org/gnu/readline/readline-#{version}.tar.gz",
       :md5 => "67948acb2ca081f23359d0256e9a271c"

relative_path "readline-#{version}"

env = {
        "LDFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
        "CFLAGS" => "-L#{install_dir}/embedded/lib -I#{install_dir}/embedded/include",
        "LD_RUN_PATH" => "#{install_dir}/embedded/lib",
        "LD_OPTIONS" => "-R#{install_dir}/embedded/lib"
      }

build do
  command ["./configure",
           "--prefix=#{install_dir}/embedded"].join(" "), :env => env

  command "make -j #{max_build_jobs}", :env => env
  command "make -j #{max_build_jobs} install"
end
