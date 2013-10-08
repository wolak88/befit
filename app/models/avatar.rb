class Avatar < ActiveRecord::Base
  validates :age, presence: true
  validates :age, numericality: { greater_than: 14, less_than: 100 }
  validates :height, presence: true
  validates :weight, presence: true
  validates :male, presence: true
  validates :activeness, presence: true
end
