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

class Request < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :days, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :out_of_country, :inclusion => {:in => [true, false]}, if: -> { days and days > 5 }

  before_validation :check_days

  def check_days
    self.out_of_country = nil unless days and days > 5
  end
end
