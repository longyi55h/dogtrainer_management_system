class Owner < ActiveRecord::Base
    has_many :dogs, dependent: :destroy
    belongs_to :user
    
    include JpPrefecture
    jp_prefecture :prefecture_code
    
    def pref(pref_code)
        owner = Owner.new
        owner.prefecture_code = pref_code
        owner.prefecture.name
    end
    
end
