class Store < ActiveRecord::Base
  has_many :employees
  validates_length_of :name, minimum: 3
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :stores_contains_one_apparel

  def stores_contains_one_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:apparel_type, "mens_apparel and womens_apparel cannot be false at the same time")
    end
  end
end
