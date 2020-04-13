# frozen_string_literal: true

# CreateTrending
class CreateTrendings < ActiveRecord::Migration[6.0]
  def change
    create_table :trendings do |t|
      t.jsonb :hashtags

      t.timestamps
    end
  end
end
