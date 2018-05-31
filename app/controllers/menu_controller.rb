class MenuController < ApplicationController
  def index

    # Add new order item to cart if possible
    @order = current_order
    @order_item = @order.order_items.new

    @sections = Section.all
    @curr_food_item= nil
    if !params[:section].nil?
      @food_items = FoodItem.where section_id: params[:section]
    elsif params[:search]
      @food_items = FoodItem.search(params[:search])
    else
      @food_items = FoodItem.all
    end

    # Get the current food item
    # if params[:food_item]
    # 	#@food_items.first
    # 	@curr_food_item = FoodItem.where(id: params[:food_item]).first
    # elsif params[:section]
    # 	@curr_food_item = FoodItem.where(section_id: params[:section]).first
    # else
    # 	@curr_food_item = FoodItem.first
    # end

    if params[:food_item]
      #@food_items.first
      @curr_food_item = @food_items.where(id: params[:food_item]).first
    else
      @curr_food_item = @food_items.first
    end

    if params[:sort_id]
      @food_items = sort_relation(params[:sort_id], @food_items)
      # sort_relation(params[:sort_id], @food_items)
    end
    @curr_section = params[:section].to_s unless params[:section].nil?
  end

  private
  def sort_relation(sort_id, fi)
    if params[:sort_id] == "atoz"
      return fi.sort_by{ |x| x.name}
    elsif params[:sort_id] == "priceasc"
      return fi.sort_by{ |x| x.price}
    elsif params[:sort_id] == "pricedesc"
      return fi.sort_by{ |x| x.price}.reverse
    end
  end
end
