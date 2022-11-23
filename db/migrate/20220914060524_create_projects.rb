    class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title, null: false, default: ""
      t.integer :category, null: false
      t.text :description, null: false, default: ""
      t.boolean :active, null: false, default: true
      t.date :start_date, null:false
      t.date :end_date, null: false
      t.integer :duration, null: false, default: 1
      t.text :tech_stack, null: false, default: ""
      t.text :challenges, null: false, default: ""
      t.integer :priority, default: 10
      t.string :git_url, null: false, default: ""
      t.string :live_url, null: false, default: ""

      t.timestamps
    end
  end
end
