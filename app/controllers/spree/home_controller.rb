module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html

    def index
      @searcher = build_searcher(params)
      @products = @searcher.retrieve_products.ascend_by_master_price
      @taxonomies = Spree::Taxonomy.includes(root: :children)
      @trader = Spree::User.first
      company = Company.where(user_id: 1)
      @c = @trader.company 
    end

  end
end
