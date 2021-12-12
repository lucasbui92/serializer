class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :text
      t.belongs_to :user, foreign_key: true
      t.belongs_to :chat, foreign_key: true

      t.timestamps
    end
  end
end
