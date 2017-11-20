class ChangeColunmToDog < ActiveRecord::Migration
  def change
    change_column_null :dogs, :owner_id, true
  end
end
