class CountWordService
  def initialize(reviews, size = 10)
    @reviews = reviews
    @size = size
  end

  def top_words()
    h = Hash.new
    @reviews.each do |review_text|
      uniq_words(review_text).each do |word|
        count = count_word(review_text, word)
        h[word] = h.has_key?(word) ? h[word] + count : count
      end
    end
    h.sort_by { |_, v| v }.reverse[0..@size]
  end

  private

  def uniq_words(str)
    str.gsub(/[^\w\s]/, '').downcase.split.uniq
  end

  def count_word(str, word)
    str.scan(/(^|\b)((?i)#{word}(?-i))($|\b)/).count
  end
end
