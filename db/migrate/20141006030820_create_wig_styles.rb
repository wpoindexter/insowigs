class CreateWigStyles < ActiveRecord::Migration
  def change
    create_table :wig_styles do |t|
      t.integer :wig_length_id
      t.string :name
      t.text :description

      t.timestamps
    end

    add_index :wig_styles, :wig_length_id, unique: true
  end

  add_attachment :wig_styles, :image
end
