class PagesController < ApplicationController
  def home
    @highlight_projects = Project.where(name: ['Study With Me', 'Break it Build it Fix it - 1st Place', 'Hack FSM - 1st Place', 'Artificial Intelligence - Pacman Contest'])
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

  def alice
    render layout: false
  end

  def aneesh
    p "*" * 80
    p params
    p "+" * 80
    p params["responses"]
    p "-" * 80
    res = JSON.parse(params["responses"])
    p res['First Name']
    p ")" * 80
  end
end
