class ProjectsController < ApplicationController
  def index
    @projects        = Project.live
    @random          = Recommendation.live.random
    @recommendations = Recommendation.live.remaining(exclude = @random.id)
  end
end
