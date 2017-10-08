class Owner < ActiveRecord::Base
    belongs_to :user
    
    include JpPrefecture
    jp_prefecture :prefecture_code
end
