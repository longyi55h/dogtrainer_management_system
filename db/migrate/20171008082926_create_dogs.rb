class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.integer :user_id, :null => false
      t.integer :owner_id, :null => false
      t.string :dog_name, :limit => 20
      t.string :dog_breed, :limit => 50
      t.datetime :dog_birthday
      t.string :dog_image_path, :limit => 50
      t.string :food_type, :limit => 20
      t.integer :food_times, :limit => 3
      t.string :favorite_snack1, :limit => 20
      t.string :favorite_snack2, :limit => 20
      t.string :favorite_snack3, :limit => 20
      t.string :favorite_toy1, :limit => 20
      t.string :favorite_toy2, :limit => 20
      t.string :favorite_toy3, :limit => 20
      t.integer :dogwalk_times, :limit => 3
      t.integer :dogwalk_hours, :limit => 3
      t.string :character1, :limit => 1
      t.string :character2, :limit => 1
      t.string :character3, :limit => 1
      t.string :character4, :limit => 1
      t.string :character5, :limit => 1
      t.string :character6, :limit => 1
      t.string :character7, :limit => 1
      t.string :character8, :limit => 1
      t.string :clinical_history1, :limit => 20
      t.string :clinical_history2, :limit => 20
      t.string :clinical_history3, :limit => 20
      t.string :clinical_history4, :limit => 20
      t.string :clinical_history5, :limit => 20
      t.string :command_language, :limit => 10
      t.boolean :basic_command1, default: 'false'
      t.boolean :basic_command2, default: 'false'
      t.boolean :basic_command3, default: 'false'
      t.boolean :basic_command4, default: 'false'
      t.boolean :basic_command5, default: 'false'
      t.boolean :basic_command6, default: 'false'
      t.string :applied_command1, :limit => 10
      t.string :applied_command2, :limit => 10
      t.string :applied_command3, :limit => 10
      t.string :applied_command4, :limit => 10
      t.string :applied_command5, :limit => 10
      t.text :notes, :limit => 1000
      t.timestamps
    end
  end
end
