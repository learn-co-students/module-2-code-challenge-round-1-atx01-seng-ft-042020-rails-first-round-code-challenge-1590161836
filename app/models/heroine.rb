class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers
    accepts_nested_attributes_for :powers

    validates :name, :super_name, presence: true
    validates :super_name, uniqueness: true
end
