class CreateHeroinePowersJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :powers, :heroine do |t|
      t.index :power_id
      t.index :heroine_id
    end
  end
end
