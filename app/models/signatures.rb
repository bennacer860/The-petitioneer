class Signatures < ActiveRecord::Base
	belongs_to :signers, :class_name => 'User'
    belongs_to :petitions

end
