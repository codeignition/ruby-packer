require 'bundler'
Bundler.require

task :default => [:publish]

AWS_ACCESS_KEY_ID     = ENV['AWS_ACCESS_KEY_ID']
AWS_SECRET_ACCESS_KEY = ENV['AWS_SECRET_ACCESS_KEY']
S3_BUCKET             = ENV['S3_BUCKET']

desc "publish the latest rpm of a project to S3"
task :publish, :package do |package|
  connection = Fog::Storage.new( provider:             :AWS,
                                 aws_access_key_id:     AWS_ACCESS_KEY_ID,
                                 aws_secret_access_key: AWS_SECRET_ACCESS_KEY)

  directory  = connection.directories.new( key: S3_BUCKET )

  package      = Dir.open("./pkg").entries.select {|e| e[/^#{package}(.*)\.rpm$/]}.sort.last
  package_path = "./pkg/#{package}"

  p directory.files.create(key: "ruby/#{package}", body: File.open(package_path), public: false)
end
