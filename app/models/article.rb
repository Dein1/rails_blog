class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :author_name, presence: true
  validates :state, inclusion: { in: %w(draft published) }
end
