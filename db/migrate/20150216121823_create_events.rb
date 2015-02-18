class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :description
      t.string :event_name
      t.string :time
      t.string :date
      t.string :marquee_status

      t.timestamps
    end
  end
end
