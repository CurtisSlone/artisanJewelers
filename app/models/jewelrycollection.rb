class Jewelrycollection < ActiveRecord::Base
    has_many :items
    has_many :jewelrymetals, through: :items
end
