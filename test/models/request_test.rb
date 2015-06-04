# == Schema Information
#
# Table name: requests
#
#  id             :integer          not null, primary key
#  firstname      :string           not null
#  lastname       :string           not null
#  days           :integer          not null
#  out_of_country :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
