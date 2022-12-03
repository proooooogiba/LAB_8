# frozen_string_literal: true

class CreateCalcs < ActiveRecord::Migration[7.0]
  def change
    create_table :calcs, id: false, primary_key: :number do |t|
      t.integer :number
      t.string :ordinary
      t.string :squares

      t.timestamps
    end
  end
end
