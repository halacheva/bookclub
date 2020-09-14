# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :encrypted_password, null: false, default: ''
    end

    add_index :users, :email, unique: true
  end
end
