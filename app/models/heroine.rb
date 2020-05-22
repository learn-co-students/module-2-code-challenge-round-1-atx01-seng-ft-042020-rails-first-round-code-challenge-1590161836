class Heroine < ApplicationRecord
    has_many :heroine_powers
    has_many :powers, through: :heroine_powers
    
    validates :name, :super_name, presence: true
    validate :super_name_is_unique

    def power_id=(id)
        self.powers << Power.find(id)
    end

    def power_id
    end

    def super_name_is_unique
        heroines = Heroine.where(super_name: self.super_name).select{|heroine| heroine.id != self.id}
        if !heroines.empty?
            errors.add(:super_name, "must be unique")
        end
    end

end
