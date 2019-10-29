# -*- encoding: utf-8 -*-
# stub: carrierwave-aws 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "carrierwave-aws".freeze
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Parker Selbert".freeze]
  s.date = "2019-09-04"
  s.description = "Use aws-sdk for S3 support in CarrierWave".freeze
  s.email = ["parker@sorentwo.com".freeze]
  s.homepage = "https://github.com/sorentwo/carrierwave-aws".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Native aws-sdk support for S3 in CarrierWave".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<carrierwave>.freeze, [">= 0.7", "< 2.1"])
      s.add_runtime_dependency(%q<aws-sdk-s3>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.6"])
    else
      s.add_dependency(%q<carrierwave>.freeze, [">= 0.7", "< 2.1"])
      s.add_dependency(%q<aws-sdk-s3>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
    end
  else
    s.add_dependency(%q<carrierwave>.freeze, [">= 0.7", "< 2.1"])
    s.add_dependency(%q<aws-sdk-s3>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
  end
end
