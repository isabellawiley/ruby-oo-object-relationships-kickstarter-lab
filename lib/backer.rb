class Backer 

    @@all = []
    
    attr_reader :name 

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def projects
        ProjectBacker.all.select do |project_instance|
            project_instance.backer == self 
        end 
    end 

    def backed_projects 
        self.projects.map do |project|
            project.project 
        end 
    end 
end 

