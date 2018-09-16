class Diary < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :comments, dependent: :destroy
    validates :foodname, presence: true,
                    length: { minimum: 1 }
end
