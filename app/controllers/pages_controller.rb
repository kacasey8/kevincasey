class PagesController < ApplicationController
  def home
    @highlight_projects = Project.where(name: ['Cool Beans - 3rd Place', 'Break it Build it Fix it - 1st Place', 'Hack FSM - 1st Place', 'Artificial Intelligence - Pacman Contest'])
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
