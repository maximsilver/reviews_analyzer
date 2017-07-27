class ReviewController < ApplicationController
  def index
    @first_review = Review.first
    @translate_review = Review.translate_text()
  end
end
