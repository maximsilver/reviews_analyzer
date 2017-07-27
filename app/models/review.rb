class Review < ApplicationRecord
  def self.top(field, count = 10)
    group(field).order("count_#{field} desc").count(field).take(count)
  end

  def self.translate_text
    return [ "Aliments pour chiens de bonne qualité", "J'ai acheté plusieurs des produits alimentaires pour chiens en conserve Vitality et les ai trouvés tous de bonne qualité. Le produit ressemble plus à un ragoût qu'une viande transformée et ça sent mieux. Mon Labrador est bien aimé et elle apprécie ce produit mieux que la plupart."]
  end
end
