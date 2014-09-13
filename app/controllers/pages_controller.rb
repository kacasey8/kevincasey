class PagesController < ApplicationController
  def home
    @highlight_projects = Project.where(name: ['Community', 'Serendpity', 'Hack FSM', 'CS188 Pacman Contest'])
  end

  def experience
  end

  def education
  end
end
