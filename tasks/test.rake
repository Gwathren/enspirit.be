namespace :test do

  desc "Run RSpec unit tests"
  task :unit do
    system("rspec -Ilib -Ispec --pattern 'spec/unit/**/test_*.rb' --color --backtrace --fail-fast")
  end

  desc "Run RSpec integration tests"
  task :integration do
    system("rspec -Ilib -Ispec --pattern 'spec/integration/**/test_*.rb' --color --backtrace --fail-fast")
  end

end
task :test => [:'test:integration']
