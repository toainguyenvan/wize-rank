class AddChallengeIdToSolutions < ActiveRecord::Migration[5.1]
  def change
    add_column :solutions, :challenge_id, :integer
  end
end
