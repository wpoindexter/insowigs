class AddInchesToWigLengths < ActiveRecord::Migration
  def change
    add_column :wig_lengths, :inches, :integer
  end
end
