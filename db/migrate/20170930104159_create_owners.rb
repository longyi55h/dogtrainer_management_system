class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.integer :user_id, :null => false
      t.integer :dog_id
      t.string :owner_lastname, :limit => 20
      t.string :owner_firstname, :limit => 20
      t.datetime :owner_birthday
      t.string :job, :limit => 20
      t.string :zipcode1, :limit => 10
      t.string :zipcode2, :limit => 10
      t.string :province, :limit => 10
      t.string :prefecture_code
      t.string :city, :limit => 20
      t.string :street, :limit => 20
      t.string :phone_number1, :limit => 5
      t.string :phone_number2, :limit => 5
      t.string :phone_number3, :limit => 5
      t.string :family1, :limit => 5
      t.string :family2, :limit => 5
      t.string :family3, :limit => 5
      t.string :family4, :limit => 5
      t.string :family5, :limit => 5
      t.datetime :family1_birthday
      t.datetime :family2_birthday
      t.datetime :family3_birthday
      t.datetime :family4_birthday
      t.datetime :family5_birthday
      t.string :house_type, :limit => 10
      t.integer :house_floor, :limit => 3
      t.string :main_manager, :limit => 5
      t.text :notes, :limit => 1000
      t.timestamps
    end
  end
end
