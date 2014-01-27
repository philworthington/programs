class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.text :title
      t.text :subtitle
      t.string :code, :limit => 6

      t.timestamps
    end
  end
end
