module ReviewConcern
  extend ActiveSupport::Concern

  def ids_from(top)
    top.map(&:first)
  end
end
