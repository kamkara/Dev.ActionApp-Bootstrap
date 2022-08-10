class Bemembership < ApplicationRecord
    validates :first_name, :last_name, :email,
              :country, :contact, :gender, :terms, presence: true

    validates :first_name, :last_name,
              format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ },
              length: { minimum:5, maximum: 30,
              message: "%{value} verifier votre nom complet"}
end
