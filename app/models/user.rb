class User < ApplicationRecord
  	has_many :user_tickets	
		has_many :tickets, :through => :user_tickets
		validates_format_of :email,:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})+\z/
		validates_format_of :phone,:with => /[0-9]{9,12}/
end