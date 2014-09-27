class PagesController < ApplicationController
  def home
    @highlight_projects = Project.where(name: ['Community', 'Serendipity', 'Hack FSM', 'Artificial Intelligence - Pacman Contest'])
  end

  def experience
  end

  def education
  end

  def eval
    result = "2"
    hsh = { swag: result }
    render json: result
  end
end
