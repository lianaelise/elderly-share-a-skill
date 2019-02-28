class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews

  before_create :set_default_photo

  def set_default_photo
    default_picture = (image_path '')
  end

  def sender?(conversation)
    self == conversation.sender
  end

  def recipient?(conversation)
    self == conversation.recipient
  end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
