class Phrase < ApplicationRecord
  validates :phrase, presence: true
  validates :language, presence: true
  belongs_to :user
end
