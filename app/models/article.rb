class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 10, too_short: "%{count} characters is the minximum allowed" }
    validates :description, presence: true, length: { minimum: 10 }
end