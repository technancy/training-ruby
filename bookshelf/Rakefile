task :default => [:specs, :cukes]
desc "run the specs"
task "specs" do
  sh "rspec --color"
end

desc "run the cukes"
task "cukes" do
  sh "cucumber -f progress"
end

