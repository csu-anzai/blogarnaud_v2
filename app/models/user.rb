class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable -- :registerable, :rememberable
  devise :database_authenticatable, :recoverable, :validatable
end
