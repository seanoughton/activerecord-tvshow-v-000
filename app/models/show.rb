class Show < ActiveRecord::Base
  def Show::highest_rating
    self.maximum(:rating)
  end

  def Show::most_popular_show
    (self.Show::highest_rating)
  end
end
