class Course < ApplicationRecord
  belongs_to :faculty
  has_many :groups, dependent: :destroy
end
