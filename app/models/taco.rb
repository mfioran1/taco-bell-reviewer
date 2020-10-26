class Taco < ApplicationRecord
    has_many :ratings
    has_many :users, through: :ratings
    belongs_to :category
    accepts_nested_attributes_for :category
    

    validates :name, presence: true


    def category_attributes=(category_attributes)
        category_attributes.values.each do |category_attribute|
          unless category_attribute.blank?
            category = Category.find_or_create_by(name: category_attribute)
            self.category = category
          end
        end
    end
end
