class Owner < ActiveRecord::Base
    has_many :dogs
    has_many :users, through: :dogs
    
    include JpPrefecture
    jp_prefecture :prefecture_code
end
