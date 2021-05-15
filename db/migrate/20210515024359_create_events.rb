class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title , null: false
      t.text   :body
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :limit_date
      t.integer    :status_id     , null: false
      t.references :plan, foreign_key: true
      t.timestamps
    end
  end
end
