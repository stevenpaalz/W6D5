require 'date'
require 'action_view'
class Cat < ApplicationRecord
include ActionView::Helpers::DateHelper
  validates :birth_date, :color, :name, :sex, presence: true
  validates :sex, inclusion: {in: ['M','F']}
  validate :birth_date_cannot_be_future

  CAT_COLORS = ['brown','black','white']
  validates :color, inclusion: {in: CAT_COLORS}

  def birth_date_cannot_be_future
    if self.birth_date > Date.today
      errors.add(:birth_date, "can't be in the future")
    end
  end

  def age
    time_ago_in_words(self.birth_date) + " old"
  end
end