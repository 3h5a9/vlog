class Moderator < ApplicationRecord
  has_secure_password
  has_many :posts

  validates :fullname, 
    presence: true, 
    length: {minimum: 3, maximum: 100}
  validates :username, 
    presence: true, 
    uniqueness: {case_sensitive: false}, 
    length: {minimum: 3, maximum: 100},
    format: {with: /\A[a-z0-9\+\-_\.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Please enter a valid email address!"}
  validates :password, 
    presence: true, 
    length: {minimum: 8, maximum: 100}
end
