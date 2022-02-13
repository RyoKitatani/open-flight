class Airline < ApplicationRecord
  has_many :reviews

  before_create :slugify
  after_update :slugify

   # parameterizeでurlに適した名前に変換
  def slugify
    self.slug = name.parameterize
  end

  def ave_score
    reviews.average(:score).round(2).to_f
  end
end
