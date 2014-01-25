class RemoveCostPriceFromProperties < ActiveRecord::Migration
  def up
    remove_column :properties, :cost_price
  end

  def up
    remove_column :properties, :cost_price, :decimal
  end
end
