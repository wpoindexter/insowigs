module ApplicationHelper

  def sale_price(original_price, discount_percentage)
    number_to_currency original_price.to_f * (1 - (discount_percentage.to_f * 0.01))
  end
end
