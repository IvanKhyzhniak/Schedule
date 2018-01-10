class Group < ApplicationRecord
  belongs_to :course
  has_many :subjects, dependent: :destroy
end
