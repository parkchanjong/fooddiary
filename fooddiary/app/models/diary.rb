class Diary < ApplicationRecord
    has_many :posts
    validates :foodname, presence: true,
                    length: { minimum: 1 }
end
