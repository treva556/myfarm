class User < ApplicationRecord

    enum role: [:client, :seller, :admin]
  
    # Common user fields (e.g., name, email, password)
    validates :name, presence: true
    validates :email, presence: true,
    validates :password, presence: true
    validates :role, presence: true


    # Additional attributes or methods for distinguishing user roles:
    def admin?
      role == 'admin'
    end
  
    def seller?
      role == 'seller'
    end
end
