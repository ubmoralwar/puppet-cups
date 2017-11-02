require 'fileutils'

namespace :github do
  desc 'Generate online documentation'
  task :docs do
    FileUtils.remove_dir('doc', true)
    FileUtils.remove_dir('docs', true)
    system('puppet strings')
    FileUtils.mv('doc', 'docs')
  end
end