class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :category, foreign_key: :article_category_id
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :author_name, presence: true
  validates :state, inclusion: { in: %w(draft published) },
                    presence: true
end
