class CreateDogkartes < ActiveRecord::Migration
  def change
    create_table :dogkartes do |t|
      t.integer :dog_id, :null => false
      t.integer :owner_id, :null => false
      t.datetime :training_date
      t.integer :training_session, :limit => 3 
      t.integer :training_times, :limit => 3
      t.integer :training_status, :limit => 3
      t.integer :training_dogwalk_times, :limit => 3
      t.integer :training_dogwalk_hours, :limit => 3
      t.string :training_detail, :limit => 1000
      t.string :training_image_path1, :limit => 50
      t.string :training_image_path2, :limit => 50
      t.string :training_image_path3, :limit => 50
      t.string :training_image_path4, :limit => 50
      t.timestamps
    end
  end
end
