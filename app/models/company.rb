class Company < ActiveRecord::Base
	belongs_to :user, class_name: "Spree::User"
	belongs_to :product, class_name: "Spree::Product"
end