class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6, message: "must be at least 6 characters long" }
  validates_uniqueness_of :movie_id, { scope: :list_id, message: "has already been added to this list" }
end
