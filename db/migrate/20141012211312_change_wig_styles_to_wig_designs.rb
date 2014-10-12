class ChangeWigStylesToWigDesigns < ActiveRecord::Migration
  def change
    rename_table :wig_styles, :wig_designs
  end
end
