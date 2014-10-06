class AddImageToWigLengths < ActiveRecord::Migration
  def change
    add_attachment :wig_lengths, :image
  end
end
