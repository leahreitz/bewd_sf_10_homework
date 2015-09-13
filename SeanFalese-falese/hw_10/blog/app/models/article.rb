class Article < ActiveRecord::Base
  validates :Title, presence: true,
    length: { minimum: 5 }
end
