task default: %w[test]

task :test do
  ruby 'spec/fizzbuzz_spec.rb'
end
