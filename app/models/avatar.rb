class Avatar < ActiveRecord::Base
  validates :age, presence: true
  validates :age, numericality: { greater_than: 14, less_than: 100 }
  validates :height, presence: true
  validates :height, numericality: { greater_than: 130, less_than: 230 }
  validates :weight, presence: true
  validates :weight, numericality: { greater_than: 40, less_than: 160 }
  validates :male, presence: true
  validates :activeness, presence: true
end
