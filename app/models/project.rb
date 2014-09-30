# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  timeframe   :string(255)
#  blurb       :string(255)
#  description :text
#  repo        :string(255)
#  demo        :string(255)
#  image_src   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  event_type  :string(255)
#  language    :string(255)
#  result      :string(255)
#

class Project < ActiveRecord::Base
end
