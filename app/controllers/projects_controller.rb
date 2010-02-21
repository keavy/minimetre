class ProjectsController < ApplicationController
  def index
    @projects        = Project.all
    @random          = Recommendation.random
    @recommendations = Recommendation.remaining(exclude = @random.id)
  end
end
