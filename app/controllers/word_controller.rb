class WordController < ApplicationController
  def index
    all_review = Review.take(500).pluck(:text)
    @top_words = CountWordService.new(all_review).top_words
  end
end
