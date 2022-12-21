# email:string
# password_digest:string

# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
    # checks password and password_confirmation match
    # hashes password using bcrypt
    has_secure_password

    validates :email,
    presence: true,
    format: { with: /\A[^@\s]+@[^@\s]+\z/,
        message: "must be a valid email address" }
end
