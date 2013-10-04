class Avatar < ActiveRecord::Base
  validates :age, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :male, presence: true
  validates :activeness, presence: true
end
