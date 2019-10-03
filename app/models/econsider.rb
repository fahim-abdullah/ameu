class Econsider < ApplicationRecord  
	belongs_to :user
	mount_uploader :postimg, PostimgUploader

	validates :user_id, presence: true
end