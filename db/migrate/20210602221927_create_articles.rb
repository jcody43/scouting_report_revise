class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :author
      t.string :player_name
      t.string :college
      t.string :position
      t.string :positions_flex
      t.integer :height
      t.integer :weight
      t.string :athletic_ability
      t.string :strengths
      t.string :weaknesses
      t.string :summary
      t.string :grade

      t.timestamps
    end
  end
end
