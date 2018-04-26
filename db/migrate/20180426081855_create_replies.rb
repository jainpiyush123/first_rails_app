class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.text :body
      t.references :comment, index: true

      t.timestamps
    end
  end
end
