namespace :turbo_tests do
  task :setup do
    # remove any existing coverage files to avoid false reporting
    FileUtils.rm_rf("coverage/turbo_tests")
  end

  task :cleanup do
    require "simplecov"

    # report coverage usage based on the results of all tests
    SimpleCov.collate Dir["coverage/turbo_tests/*/.resultset.json"] do
      enable_coverage :branch
      enable_coverage :method

      minimum_coverage line: 100, branch: 100, method: 100
    end
  end
end
