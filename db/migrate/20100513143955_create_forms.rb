class CreateForms < ActiveRecord::Migration
  def self.up
    create_table :forms, :force => true do |t|
      t.timestamps
    end
  end

  def self.down
    drop_table :forms
  end
end
