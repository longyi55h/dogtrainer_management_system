class ChangeNotnullTrainingDateOfDogkartes < ActiveRecord::Migration
  def change
    change_column_null :dogkartes, :training_date, false
  end
end
