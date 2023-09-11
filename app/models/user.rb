class User < ApplicationRecord

    enum role: [:client, :seller, :admin]
  
    # Common user fields (e.g., name, email, password)
  
    # Additional attributes or methods for distinguishing user roles:
    def admin?
      role == 'admin'
    end
  
    def seller?
      role == 'seller'
    end
end
