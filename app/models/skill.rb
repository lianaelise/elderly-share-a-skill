class Skill < ApplicationRecord
  belongs_to :subject
  belongs_to :teacher, class_name: 'User'
end
