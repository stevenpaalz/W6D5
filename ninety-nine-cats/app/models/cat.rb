# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'date'
require 'action_view'
class Cat < ApplicationRecord
include ActionView::Helpers::DateHelper
  validates :color, :birth_date, :name, :sex, presence: true
  validates :sex, inclusion: {in: ['M','F']}
  validate :birth_date_cannot_be_future

  CAT_COLORS = ['brown','black','white']
  validates :color, inclusion: {in: CAT_COLORS}

  def birth_date_cannot_be_future
    return unless self.birth_date.present? && self.birth_date > Date.today
    errors.add(:birth_date, "can't be in the future")
  end

  def age
    time_ago_in_words(self.birth_date) + " old"
  end
end
