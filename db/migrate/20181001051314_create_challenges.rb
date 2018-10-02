class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.string :raw_content
      t.string :language
      t.integer :point

      t.timestamps
    end
  end
end
