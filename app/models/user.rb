class User < ApplicationRecord
  	has_many :recipes, dependent: :destroy

	before_save { self.email = email.downcase }

	VALID_NAME_REGEX = /\A[a-z0-9]*\z/i
	validates :name,  presence: true, length: { maximum: 50 },
		format: { with: VALID_NAME_REGEX },
		uniqueness: { case_sensitive: false }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
		format: { with: VALID_EMAIL_REGEX }

	validates :password, presence: true
  	validates :password, :confirmation => true
  	validates_length_of :password, :in => 6..20, :on => :create



	has_secure_password
end
