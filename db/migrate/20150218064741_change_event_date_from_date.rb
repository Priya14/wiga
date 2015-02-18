class ChangeEventDateFromDate < ActiveRecord::Migration
  def change
    add_column :events, :events_date, :date
    remove_column :events, :event_date, :string
  end
end
