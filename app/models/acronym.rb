class Acronym < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :definition, presence: true
end
