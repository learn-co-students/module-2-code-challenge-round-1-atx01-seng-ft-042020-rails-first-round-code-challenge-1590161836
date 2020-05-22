class Heroine < ApplicationRecord
    has_many :heroinepowers
    has_many :powers, through: :heroinepower

    validates :name, :super_name, :presence => true, allow_blank: false
    validates :name, :super_name, :uniqueness => true
end
