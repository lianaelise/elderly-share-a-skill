class Review < ApplicationRecord
  belongs_to :reviewer, polymorphic: true
  belongs_to :reviewee, class_name: 'User'
end
