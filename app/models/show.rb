require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

# binding.pry

  def self.most_popular_show
    Show.find_by(rating: self.highest_rating)
    #binding.pry
  end

  def self.lowest_rating
    Show.minimum(:rating)
    #binding.pry
  end


  def self.least_popular_show
    Show.find_by(rating: self.lowest_rating)
  end

  def self.ratings_sum
    Show.all.sum(:rating)
  end

  def self.popular_shows
    Show.all.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.all.order(name: :asc)
  end

end
