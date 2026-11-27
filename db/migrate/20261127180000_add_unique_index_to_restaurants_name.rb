# Back the model's uniqueness validation with a database constraint.
class AddUniqueIndexToRestaurantsName < ActiveRecord::Migration[5.2]
  def change
    add_index :restaurants, :name, unique: true
  end
end
