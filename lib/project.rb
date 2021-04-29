require 'pry'

class Project 

    @@all = []

    attr_reader :title 
    
    def initialize(title)
        @title = title 
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers_instances
        ProjectBacker.all.select do |backer_instance|
            backer_instance.project == self 
        end 
    end 

    def backers 
        self.backers_instances.map do |backer|
            backer.backer
        end 
    end 
end 

# project_one = Project.new("project one")
# backer_one = project_one.add_backer("backer one")
# backer_two = project_one.add_backer("backer two")

