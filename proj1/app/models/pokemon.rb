class Pokemon < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :level, presence: true
  belongs_to :trainer
end
