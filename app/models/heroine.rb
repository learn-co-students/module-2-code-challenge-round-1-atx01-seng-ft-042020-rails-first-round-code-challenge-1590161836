class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers

    validate :validate_name_and_super_name

    def power_ids=(id)
        power = Power.find_by(id: id)
        if power != nil
            self.powers << power
        end
    end

    def validate_name_and_super_name
        if self.name == nil || self.name == ""
            errors.add(:name, "You Must Have a Name")
        elsif self.super_name == nil || self.super_name == ""
            errors.add(:super_name, "You Must Have a Super Name")
        elsif !Heroine.all.where(super_name: self.super_name).select {|h| h.id != self.id}.empty?
            errors.add(:super_name, "That super name is already taken")
        end
    end
end
