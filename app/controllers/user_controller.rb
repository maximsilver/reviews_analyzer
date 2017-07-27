class UserController < ApplicationController
  include ReviewConcern

  def index
    top = Review.top('user_id')
    ids = ids_from(top)
    reviews = Review.where(user_id: ids).sort_by { |r| ids.index(r.user_id) }
    @user_names = reviews.map(&:profile_name).uniq
  end
end
