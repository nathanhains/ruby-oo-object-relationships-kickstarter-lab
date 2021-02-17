class Backer
    attr_reader :name
   
    def initialize(name)
        @name = name
    end

    def back_project(project)
        back_proj = ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_projects = ProjectBacker.all.select{|projects| projects.backer == self}
        backed_projects.map do |back_proj|
            back_proj.project
        end
    end

end