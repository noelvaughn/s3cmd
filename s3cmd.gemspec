$:.push File.expand_path("../lib", __FILE__)
require "s3cmd/version"

Gem::Specification.new do |s|
  s.name        = "s3cmd"
  s.version     = S3Cmd::VERSION
  s.authors     = ["Samuel Kadolph"]
  s.email       = ["samuel@kadolph.com"]
  s.homepage    = "https://github.com/samuelkadolph/s3cmd"
  s.summary     = %q{Simple cli tool for interacting with S3.}
  s.description = <<-DESC
Provides a s3cmd binary that allows you to create and list buckets as well as list the keys of a bucket and get and upload files
to s3.
DESC

  s.required_ruby_version = ">= 1.8.7"

  s.files       = Dir["bin/*", "lib/**/*"] + ["LICENSE", "README.md"]
  s.executables = ["s3cmd"]

  s.add_dependency "aws", "~> 2.5.6"
  s.add_dependency "mime-types", "~> 1.16"
  s.add_dependency "proxifier", "~> 1.0.2"
  s.add_dependency "thor", "~> 0.16.0"
end
