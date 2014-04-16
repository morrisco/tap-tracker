class Keg < ActiveRecord::Base
  has_many :pours

  def self.current_kegs
    where(currently_tapped: true).pluck(:name)
  end 
end
