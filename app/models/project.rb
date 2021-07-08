class Project < ApplicationRecord
  # model association
  has_many :milestones
  has_many :viewers

  # validations
  validates_presence_of :title, :created_by

  def single_day_project
    Time.at(self.start_date).to_date === Time.at(self.end_date).to_date
  end
end
