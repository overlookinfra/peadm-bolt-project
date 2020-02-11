#require 'json'

#desc 'task description'
#task :task_name, [:var] do |t, args| 
    #args.with_defaults(:var => JSON.parse(File.read('metadata.json'))['name']) #example function
    #sh "generate-puppetfile -c  #{args.mod}" #example command line exec
#end
