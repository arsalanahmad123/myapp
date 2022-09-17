class Product < ApplicationRecord
    has_many :product_categories
    has_many :line_items
    has_many :categories, through: :product_categories
    include ImageUploader::Attachment(:image)

    before_destroy :not_referenced_by_any_line_item


    private

        def not_referenced_by_any_line_item
            unless line_items.empty?
                errors.add(:base, "line items present")
                throw :abort
            end
        end
end
