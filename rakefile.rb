require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |task|
  task.pattern = Dir.glob("spec/**/*_spec.rb")
  task.rspec_opts = "--format documentation"
end

  task default: :spec

# task default: %w[test]
#
# task :test do
#   ruby 'spec/fizzbuzz_spec.rb'
# end
