class Petition < ActiveRecord::Base
  attr_accessible :letter, :about, :title, :goal
end
