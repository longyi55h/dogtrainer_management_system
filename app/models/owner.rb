class Owner < ActiveRecord::Base
    belongs_to :user
    has_many :dogs
    
    include JpPrefecture
    jp_prefecture :prefecture_code
end
