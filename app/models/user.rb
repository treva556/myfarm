class User < ApplicationRecord

    enum role: [:client, :seller, :admin]

        enum role: { user: 0, admin: 1 }
      
        # Virtual attribute for password confirmation
        attr_accessor :password_confirmation


    # Common user fields (e.g., name, email, password)
    validates :name, presence: true
    validates :email, presence: true,
    validates :password, presence: true
    validates :role, presence: true
    validates :role, inclusion: { in: roles.keys }
    validates :password, presence: true, length: { minimum: 6 }, confirmation: true
    validates :password_confirmation, presence: true
    # Password encryption using bcrypt
  has_secure_password


    # Additional attributes or methods for distinguishing user roles:
    def admin?
      role == 'admin'
    end
  
    def seller?
      role == 'seller'
    end
end

# Validations
