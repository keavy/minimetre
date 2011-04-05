class ProjectsController < ApplicationController
  layout 'home'
  def index
    @projects        = Project.live.ordered
    @random          = Recommendation.live.random
    @recommendations = Recommendation.live.remaining(exclude = @random.id)
  end
end
