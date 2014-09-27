class PagesController < ApplicationController
  def home
    @highlight_projects = Project.where(name: ['Community', 'Serendipity', 'Hack FSM', 'Artificial Intelligence - Pacman Contest'])
  end

  def experience
  end

  def education
  end

  def eval_for_russell
    result = eval(params['foo'])
    unless result
      result = ""
    end
    result = result.to_s
    hsh = { swag: result }
    render json: hsh
  end
end
