class Show < ActiveRecord::Base
  def Show::highest_rating
    self.maximum(:rating)
  end

  def Show::most_popular_show
    x = (Show::highest_rating)
    self.where("rating = ?",x).flatten.first
  end

  def Show::lowest_rating
    self.minimum(:rating)
  end

  def Show::least_popular_show
    x = (Show::lowest_rating)
    self.where("rating = ?",x).flatten.first
  end

  def Show::ratings_sum
    self.sum(:rating)
  end

  def Show::popular_shows
    self.where("rating > ?",5).flatten
  end

  def Show::shows_by_alphabetical_order
    #Client.order(created_at: :desc)
    self.order(:name)
  end
end
