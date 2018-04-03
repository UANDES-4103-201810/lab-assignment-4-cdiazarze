class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  validate :start_date_cannot_be_in_the_past,
           :cannot_be_event_same_venue

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end
  def cannot_be_event_same_venue
    if Event.where(place: self.place).length > 0 && Event.where(start_date: self.start_date).length > 0
      errors.add(:discount, "can't be same place, same date")
    end
  end
end
