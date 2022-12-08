class Contact include ActiveModel::Model
  attr_accessor :name, :email, :message
 
  validates :name, presence: true, length: { maximum: 60 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 254 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :message, presence: true, length: { maximum: 500 }
end