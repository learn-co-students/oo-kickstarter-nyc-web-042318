require 'pry'
require_relative "backer.rb"


class Project

  attr_accessor :backers, :add_backer
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    @backers << name
    #add this whole projects object to bakers projects
    name.backed_projects << self
    # binding.pry
    # name.back_project(@title)
  end

end
#
# amzrapid = Project.new("Amz Rapid")
# mendy = Backer.New("mendy")
# binding.pry
