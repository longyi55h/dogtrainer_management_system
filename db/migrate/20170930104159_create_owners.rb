class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.integer :user_id, :null => false
      t.string :owner_lastname, :limit => 20
      t.string :owner_firstname, :limit => 20
      t.datetime :owner_birthday
      t.string :job, :limit => 20
      t.integer :zipcode, :limit => 10
      t.string :province, :limit => 10
      t.string :city, :limit => 20
      t.string :street, :limit => 20
      t.integer :phone_number, :limit => 15
      t.integer :family1, :limit => 3
      t.integer :family2, :limit => 3
      t.integer :family3, :limit => 3
      t.integer :family4, :limit => 3
      t.integer :family5, :limit => 3
      t.datetime :family1_birthday, :limit => 3
      t.datetime :family2_birthday, :limit => 3
      t.datetime :family3_birthday, :limit => 3
      t.datetime :family4_birthday, :limit => 3
      t.datetime :family5_birthday, :limit => 3
      t.integer :house_type, :limit => 3
      t.integer :house_floor, :limit => 3
      t.integer :main_manager, :limit => 3
      t.text :notes, :limit => 1000
      t.timestamps
    end
  end
end
