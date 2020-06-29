class Topic < ApplicationRecord
  belongs_to :user
  has_many :topic_categories
  has_many :categories, through: :topic_categories
  has_many :comments, dependent: :destroy

  validates :name, :title, :category_ids, presence: true

  def self.search(keyword)

  end
end
