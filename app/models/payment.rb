class Payment < ApplicationRecord
    attr_accessor :card_number, :card_cvc, :card_expires_month, :card_expires_year
    belongs_to :user

    def self.month_options
        Date::MONTHNAMES.compact.each_with_index.map{ |name,i| ["#{i+1}"] }
    end

end
