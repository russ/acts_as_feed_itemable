require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "acts_as_feed_itemable"
    gem.summary = %Q{Feed items for a Facebook like wall.}
    gem.description = %Q{Feed items for a Facebook like wall.}
    gem.email = "https://github.com/amirmanji/acts_as_feed_itemable"
    gem.homepage = "https://github.com/amirmanji/acts_as_feed_itemable"
    gem.authors = [ "Amir Manji", "Russ Smith (russ@bashme.org)" ]
    gem.add_development_dependency "rspec", "~> 1.3.0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the <%= file_name %> plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the <%= file_name %> plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = '<%= class_name %>'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
