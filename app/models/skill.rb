class Skill < ApplicationRecord
  belongs_to :subject
  belongs_to :teacher
end
