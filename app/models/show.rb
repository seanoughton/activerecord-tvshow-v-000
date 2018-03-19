class Show < ActiveRecord::Base
  def Show::highest_rating
    self.maximum(:rating)
  end

  def Show::most_popular_show
    self.where("rating = ?",(Show::highest_rating))
  end
end
