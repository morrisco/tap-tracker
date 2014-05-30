class Keg < ActiveRecord::Base
  has_many :pours
  validates :name, presence: true
  after_initialize :init

  def init
    self.volume ||= 0.0
  end

  def self.current_kegs
    where(currently_tapped: true)
  end 

  def volume_in_gallons
    (volume || 0) / 128
  end

  def volume_remaining
    volume - total_poured
  end

  def pours_remaining
    volume_remaining / 12
  end

  def total_poured
    pours.map(&:volume).reduce(0, :+)
  end
end
