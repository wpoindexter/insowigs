module ApplicationHelper

  def sale_price(original_price, discount_percentage)
    number_to_currency original_price.to_f * (1 - (discount_percentage.to_f * 0.01))
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def my_account_link
    current_user.nil? ? new_session_path(resource_name) : '#'
  end

  def my_orders_link
    current_user.nil? ? new_session_path(resource_name) : '#'
  end

  def my_wish_list_link
    current_user.nil? ? new_session_path(resource_name) : '#'
  end
end
