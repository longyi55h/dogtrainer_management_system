class Dogkarte < ActiveRecord::Base
    belongs_to :dog
    mount_uploader :training_image_path1, DogImagePathUploader
    mount_uploader :training_image_path2, DogImagePathUploader
    mount_uploader :training_image_path3, DogImagePathUploader
    mount_uploader :training_image_path4, DogImagePathUploader
end
