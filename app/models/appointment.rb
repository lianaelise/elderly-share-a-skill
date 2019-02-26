class Appointment < ApplicationRecord
  belongs_to :teacher
  belongs_to :student

  validate :status
end
