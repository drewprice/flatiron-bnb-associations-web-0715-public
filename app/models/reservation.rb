class Reservation < ActiveRecord::Base
  belongs_to :guest, class_name: 'User'
  belongs_to :listing
  # TODO: this always works? has one?
  has_many :reviews
end
