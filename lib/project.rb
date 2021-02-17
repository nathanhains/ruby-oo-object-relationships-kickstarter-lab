class Project
    attr_reader :title
 
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        back_proj = ProjectBacker.new(self, backer)
    end

    def backers
        backed_projects = ProjectBacker.all.select{|projects| projects.project == self}
        backed_projects.map do |back_proj|
            back_proj.backer
        end
    end

end