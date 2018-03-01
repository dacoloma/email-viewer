class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :object
      t.text :body
      t.boolean :opened, default: false, null: false

      t.timestamps
    end
  end
end
