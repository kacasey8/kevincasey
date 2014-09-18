class PagesController < ApplicationController
  def home
    @highlight_projects = Project.where(name: ['Community', 'Serendpity', 'Hack FSM', 'Artificial Intelligence - Pacman Contest'])
  end

  def experience
  end

  def education
  end
end
