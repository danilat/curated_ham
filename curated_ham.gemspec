Gem::Specification.new do |spec|
  spec.name        = 'curated_ham'
  spec.version     = '0.0.0'
  spec.date        = '2016-09-23'
  spec.summary     = "A content curation gem"
  spec.description = "Curated Ham it will be a content curation gem written ruby using a Clean Architecture approximation"
  spec.authors     = ["Dani Latorre"]
  spec.email       = 'dani@danilat.com'
  spec.files       = ["lib/curated_ham.rb"]
  spec.homepage    =
    'https://github.com/danilat/cured_ham'
  spec.license       = 'MIT'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rspec", "~> 3.0"
end