require 'spec_helper'

describe CountWordService do
  let!(:review) { FactoryGirl.create(:review, text: 'test1 test1 test2') }
  let!(:all_review) { Review.all.pluck(:text) }

  it 'return top word' do
    top = CountWordService.new(all_review).top_words
    expect(top).to eq([['test1', 2], ['test2', 1]])
  end
end
