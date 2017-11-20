class ChangeDataypeTrainingStatusOfDogkartes < ActiveRecord::Migration
  def change
    change_column :dogkartes, :training_status, :string, :limit => 20
  end
end
