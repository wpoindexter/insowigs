class AddImageToWigStyles < ActiveRecord::Migration
  def change
    add_attachment :wig_styles, :image
  end
end
