class CreateWigLengths < ActiveRecord::Migration
  def change
    create_table :wig_lengths do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
