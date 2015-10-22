class StoreFrontController < ApplicationController
  def home
      @items = Item.order("random()").limit(3)
  end

  def catalog
      @items= Item.all
  end

  def items_by_group
      @jewelrygroup = Jewelrygroup.find(params[:jewelrygroup_id])
      @items = Item.all
      @items_by_group = []

      @items.each do |item|
          if item.jewelrygroup.id == params[:jewelrygroup_id].to_i
              @items_by_group << item
      end
    end 
  end

  def wedding
  end

  def exclusive
  end

  def about
  end
end
