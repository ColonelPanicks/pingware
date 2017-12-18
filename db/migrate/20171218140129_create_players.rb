class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :rank
      t.float :skill
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
