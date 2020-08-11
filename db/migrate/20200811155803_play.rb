class Play < ActiveRecord::Migration[5.2]
  def change
    create_table :plays do |t|
      t.integer :artist_id
      t.integer :instrument_id
    end
  end
end
