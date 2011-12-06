require 'test_helper'

class PetitionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Petition.new.valid?
  end
end
