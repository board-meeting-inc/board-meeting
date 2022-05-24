class CreateDiscussions < ActiveRecord::Migration[7.0]
  def change
    create_table :discussions do |t|
      t.string :title
      t.belongs_to :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
