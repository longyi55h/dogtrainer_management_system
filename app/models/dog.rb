class Dog < ActiveRecord::Base
    belongs_to :user
    belongs_to :owner
    has_many :dogkartes
end
