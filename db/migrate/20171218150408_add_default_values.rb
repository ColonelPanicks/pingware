class AddDefaultValues < ActiveRecord::Migration[5.1]
  def up
    # Defaults of 0 for numerical entries of new players
    change_column :players, :rank, :integer, default: 0
    change_column :players, :skill, :float, default: 0
    change_column :players, :wins, :integer, default: 0
    change_column :players, :losses, :integer, default: 0
    # Player name must be unique
    add_index :players, :name, unique: true
  end

  def down
    # Defaults of 0 for numerical entries of new players
    change_column :players, :rank, :integer, default: nil
    change_column :players, :skill, :float, default: nil
    change_column :players, :wins, :integer, default: nil
    change_column :players, :losses, :integer, default: nil
    # Player name must be unique
    remove_index :players, :name
  end
end
