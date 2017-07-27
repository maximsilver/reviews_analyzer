require 'spec_helper'

describe Review do
  describe '.translate_text' do
    let!(:text) { "J'ai acheté plusieurs des produits alimentaires pour chiens en conserve Vitality et les ai trouvés tous de bonne qualité. Le produit ressemble plus à un ragoût qu'une viande transformée et ça sent mieux. Mon Labrador est bien aimé et elle apprécie ce produit mieux que la plupart." }
    let!(:summary) { "Aliments pour chiens de bonne qualité" }

    it 'returns translate_text' do
      expect(Review.translate_text().first).to eq(summary)
      expect(Review.translate_text().last).to eq(text)
    end
  end


  describe '.top' do
    let!(:test_review) { FactoryGirl.create(:review) }

    it 'returns top user' do
      expect(Review.top('user_id').first).to include(test_review.user_id)
    end
  end
end
