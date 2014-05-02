class Keg < ActiveRecord::Base
  has_many :pours

  def self.current_kegs
    where(currently_tapped: true).pluck(:name)
  end 

  def volume_in_gallons
    (volume || 0) / 128
  end
end
