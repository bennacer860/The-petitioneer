class Petition < ActiveRecord::Base
  attr_accessible :letter, :about, :title, :goal
   #relationships
   belongs_to :user
   #signature
   has_many :signatures
   has_many :signers ,:through => :signatures , :class_name => 'User'

end
