class Authur < ApplicationRecord
    validates :name, presence: true, length: { minimum: 10, too_short: "%{count} characters is the minximum allowed" }
    validates :address, presence: true, length: { minimum: 10 }
    validates :email, confirmation: true, length: { minimum: 5, too_short: "%{count} characters is the minximum allowed" }
    validates :email_confirmation, presence: true, length: { minimum: 10, too_short: "%{count} characters is the minximum allowed" }
end

