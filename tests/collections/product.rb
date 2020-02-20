class Product
    @@products = []
    attr_reader :id, :name, :quantity, :price

    def initialize (data = {})
        @id = data[:id] || 0
        @name = data[:name] || "Default product name"
        @quantity = data[:quantity] || 0
        @price = data[:price] || 0
        @@products << self
    end
    
    def self.all
        @@products
    end

    def self.product_names
        #@@products.map { |product| product.name }
        # below is a shorter version of the above
        @@products.map(&:name)
    end

    def self.to_order
        @@products.reject { |product| product.quantity > 0 }
        @@products.select { |product| product.quantity <= 0 }
    end

    def self.inventory_value
        quantities = @@products.map(&:quantity)
        #puts quantities

        prices = @@products.map(&:price)
        #puts prices

        item_values = quantities.zip(prices).map {|q, p| q * p }
        #puts item_values

        total_value = item_values.sum
    end
end