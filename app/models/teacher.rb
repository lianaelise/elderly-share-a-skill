# Single Table Inheritance
class Teacher < User
  has_many :skills
  has_many :subjects, through: :skills
  has_many :appointments

  mount_uploader :picture, PhotoUploader

  validates :subjects, length: {maximum: 3}

  accepts_nested_attributes_for :skills

  def self.find_by_skill_or_subject(query)
    joins(:skills, :subjects)
      .where('skills.name ILIKE ? OR subjects.name ILIKE ?', "%#{query}%", "%#{query}%")
  end
end
