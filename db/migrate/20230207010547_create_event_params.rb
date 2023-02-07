class CreateEventParams < ActiveRecord::Migration[6.0]
  def change
    create_table :event_params do |t|
      t.string :name
      t.string :type
      t.references :event, null: false, foreign_key: true
    end
  end
end
