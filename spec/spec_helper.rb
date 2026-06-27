require "simplecov"

SimpleCov.start do
  enable_coverage :branch
  enable_coverage :method
  # enable_coverage :eval if Coverage.respond_to?(:supported?) && Coverage.supported?(:eval)

  use_merging false
  # minimum_coverage_by_file 80
  # maximum_coverage_drop 5
  # refuse_coverage_drop
  minimum_coverage line: 100, branch: 100, method: 100

  # when running in parallel, write coverage to a directory-per-env which
  # we can then collate into a single report after all tests are done
  if ENV.key?("TEST_ENV_NUMBER")
    use_merging true

    coverage_dir "coverage/turbo_tests/#{ENV["TEST_ENV_NUMBER"]}"
    command_name "rspec-#{ENV["TEST_ENV_NUMBER"]}"

#    SimpleCov.print_errors false

    formatter SimpleCov::Formatter::SimpleFormatter
  end
end
