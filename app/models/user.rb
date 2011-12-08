class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  #relationsships
  has_many :petitions
  #signatures
  has_many :signatures
  has_many :signed_petitions ,:through => :signatures , :class_name => 'Petitions' , :foreign_key => 'petition_id'



end
