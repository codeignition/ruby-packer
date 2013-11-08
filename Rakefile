require 'bundler'
Bundler.require

task :default => [:publish]

AWS_ACCESS_KEY_ID     = ENV['AWS_ACCESS_KEY_ID']
AWS_SECRET_ACCESS_KEY = ENV['AWS_SECRET_ACCESS_KEY']
S3_BUCKET             = ENV['S3_BUCKET']

desc "publish rpm to S3"
task :publish do
  connection = Fog::Storage.new( provider:             :AWS,
                                 aws_access_key_id:     AWS_ACCESS_KEY_ID,
                                 aws_secret_access_key: AWS_SECRET_ACCESS_KEY)

  directory  = connection.directories.new( key: S3_BUCKET )

  package       = "ruby-2.0.0_p195-1.el6.x86_64.rpm"
  package_path = "./pkg/#{package}"

  p directory.files.create(key: "ruby/#{package}", body: File.open(package_path), public: false)
end
