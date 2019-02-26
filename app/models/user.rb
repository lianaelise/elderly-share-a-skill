class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews


  def sender?(conversation)
    self == conversation.sender
  end

  def recipient?(conversation)
    self == conversation.recipient
  end
end
