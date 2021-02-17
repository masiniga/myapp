class Quote < ApplicationRecord
  validates :content, presence: true
  validates :author, presence: true
  validates :language, presence: true
end
