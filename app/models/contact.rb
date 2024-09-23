class Contact < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :email, uniqueness: true
    validates :phone, format: { with: /\A\+\d{1,3}\s\d{1,14}\z/, message: "must be in the format +123 1234567890" }
end
