class ChangeReferencesMessages < ActiveRecord::Migration[7.0]
  def change
    remove_reference :messages, :chatroom, index: true, foreign_key: true
    add_reference :messages, :order, index: true, foreign_key: true
  end
end
