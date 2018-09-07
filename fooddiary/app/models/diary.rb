class Diary < ApplicationRecord
    validates :foodname, presence: true,
                    length: { minimum: 1 }
end
