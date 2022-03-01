class CreatePoints < ActiveRecord::Migration[7.0]
  def change
    create_table :points do |t|
      t.decimal :lat, precision: 10, scale: 2
      t.decimal :lng, precision: 10, scale: 2
      t.string :prefecture

      t.timestamps
    end
  end
end
