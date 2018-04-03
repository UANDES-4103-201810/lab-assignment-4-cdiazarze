class Place < ApplicationRecord
	has_many :events
	validates :name,	length: { :minimum => 20}
	validates :capacity, numericality: { :greater_than_or_equal_to => 1 }
end
