class Acronym < ActiveRecord::Base
  validates :name, presence: true
  validates :definition, presence: true
end
