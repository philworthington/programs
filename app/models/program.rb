class Program < ActiveRecord::Base
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :code, presence: true, length: { minimum: 6, maximum: 6 }
end
