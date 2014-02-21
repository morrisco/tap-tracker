class Pour < ActiveRecord::Base
  belongs_to :keg
  belongs_to :user
end
