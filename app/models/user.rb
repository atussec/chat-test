class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   enum position: {
          users: 0,
          trainer: 1
          }
  has_many :chatrooms
  has_many :messages

end
