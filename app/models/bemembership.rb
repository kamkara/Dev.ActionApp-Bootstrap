class Bemembership < ApplicationRecord
    validates :first_name, :last_name, :email,
              :country, :contact, :gender, :terms, :citytown, presence: true

    
    validates :first_name, :last_name,
              format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ },
              length: { maximum: 30,
              message: "%{value} verifier votre nom complet"}
    validates :contact,
              format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ },
              length: { maximum: 14,
              message: "%{value} verifier votre Numéro"}
end
