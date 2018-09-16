class Diary < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :foodname, presence: true,
                    length: { minimum: 1 }
end
