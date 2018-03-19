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
end
