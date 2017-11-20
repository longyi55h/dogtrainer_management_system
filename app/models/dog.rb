class Dog < ActiveRecord::Base
    belongs_to :user
    belongs_to :owner
    has_many :dogkartes, dependent: :destroy
    accepts_nested_attributes_for :owner
    mount_uploader :dog_image_path, DogImagePathUploader
end
