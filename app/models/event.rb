class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  validates :start_date, if: :validate_date?

  def validate_date?
    :start_date>:created_at
  end
end
