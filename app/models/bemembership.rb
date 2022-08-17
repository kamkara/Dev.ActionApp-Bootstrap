class Bemembership < ApplicationRecord
    validates :first_name, :last_name, :email,
              :country, :contact, :gender, :terms, :citytown,
                :employer, :profession, :matrimonial,
                 :nationality, presence: true

    
    validates :first_name, :last_name, :source,
                :employer, :profession, :matrimonial,
                :nationality,
              format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ },
              length: { maximum: 30,
              message: "%{value} verifier votre nom complet"}
    validates :contact,
             #format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ },
              length: { maximum: 16,
              message: "%{value} verifier votre Numéro"}
end
