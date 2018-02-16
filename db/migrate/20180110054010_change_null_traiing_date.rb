class ChangeNullTraiingDate < ActiveRecord::Migration
  def change
    change_column_null :dogkartes, :training_date, true
  end
end
