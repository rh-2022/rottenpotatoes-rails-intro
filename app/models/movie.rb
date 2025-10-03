class Movie < ActiveRecord::Base
  ALL_RATINGS = %w[G PG PG-13 RNC-17].freeze

  def self.all_ratings
    ALL_RATINGS
  end 

  def self.with_ratings(ratings_list)
    return all if ratings_list.blank?
    where(rating: ratings_list)
  end
end
