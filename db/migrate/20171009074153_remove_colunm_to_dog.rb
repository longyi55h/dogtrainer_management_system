class RemoveColunmToDog < ActiveRecord::Migration
  def change
    remove_column :dogs, :dog_id, :integer
  end
end
