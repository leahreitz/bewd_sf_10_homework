class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :Title, presence: true,
    length: { minimum: 5 }
end
