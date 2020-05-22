class Power < ApplicationRecord
    has_many :heroine_powers
    has_many :heroines, through: :heroine_powers

    def heroine_ids=(ids)
        parsed_ids = ids.select {|i| i != ""}.map {|e| e.to_i}
        self.heroines = parsed_ids.map {|id| Heroine.find_by(id: id)}
      end
end
