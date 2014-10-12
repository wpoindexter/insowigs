class AddInchesToWigLengths < ActiveRecord::Migration
  def change
    remove_column :wig_lengths, :name
    add_column :wig_lengths, :inches, :integer
  end
end
