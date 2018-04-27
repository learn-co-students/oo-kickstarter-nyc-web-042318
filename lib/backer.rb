require_relative "project.rb"
require 'pry'



class Backer

  attr_accessor :back_project, :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end
# 
# mendy = Backer.new("Mendy")
# aleks = Backer.new("Aleks")
# jeff = Backer.new("Jeff")
#
# pr1 = Project.new("Project 1")
# pr2 = Project.new("Project 2")
# pr3 = Project.new("Project 3")
#
# binding.pry
