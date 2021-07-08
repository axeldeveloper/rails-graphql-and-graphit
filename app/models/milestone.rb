class Milestone < ApplicationRecord
  belongs_to :project

  # validation
  validates_presence_of :title
end
