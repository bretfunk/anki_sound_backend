class CreatePhrases < ActiveRecord::Migration[5.1]
  def change
    create_table :phrases do |t|
      t.string :phrase
      t.string :language

      t.timestamps
    end
  end
end
