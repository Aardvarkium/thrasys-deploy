class StaticController < ApplicationController
  def technology
    @title = "Technology"
    @technologies = Technology.all
  end
  def solutions
    @title = "Solutions"
    @solutions = Solution.all
  end
end
