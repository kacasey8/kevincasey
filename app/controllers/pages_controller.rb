class PagesController < ApplicationController
  def home
    @highlight_projects = Project.where(name: ['Community', 'Serendipity', 'Hack FSM', 'Artificial Intelligence - Pacman Contest'])
  end

  def experience
  end

  def education
  end

  def eval
    result = eval params['foo']
    render json: result
  end
end
