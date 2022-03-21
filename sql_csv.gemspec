# frozen_string_literal: true

require_relative 'lib/sql_csv/version'

Gem::Specification.new do |spec|
  spec.name          = 'sql_csv'
  spec.version       = SqlCsv::VERSION
  spec.authors       = ['Bob Farrell']
  spec.email         = ['git@bob.frl']

  spec.summary       = 'Export CSV from SQL'
  spec.description   = 'Use ActiveRecord to execute SQL against any DB to export CSV'
  spec.homepage      = 'https://github.com/bobf/sql_csv'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'bin'
  spec.executables   = ['sql_csv']
  spec.require_paths = ['lib']
  spec.add_runtime_dependency 'activerecord', '~> 6.1'
  spec.add_runtime_dependency 'mysql2', '~> 0.5.3'

  spec.add_development_dependency 'devpack', '~> 0.3.2'
end
