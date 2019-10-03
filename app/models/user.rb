class User < ApplicationRecord  
	has_many :econsiders
	has_secure_password
end