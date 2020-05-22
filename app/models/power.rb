class Power < ApplicationRecord
    has_many :heroinepower
    has_many :heroines, through: :heroinepower
end
