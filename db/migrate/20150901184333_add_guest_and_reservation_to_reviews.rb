class AddGuestAndReservationToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :guest, index: true
    add_foreign_key :reviews, :guests
    add_reference :reviews, :reservation, index: true
    add_foreign_key :reviews, :reservations
  end
end
