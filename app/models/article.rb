class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :article_categories
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :author_name, presence: true
  validates :state, inclusion: { in: %w(draft published) },
                    presence: true
  validates :article_category, presence: true
end
