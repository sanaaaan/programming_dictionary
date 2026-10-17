class CreateProgrammingTerms < ActiveRecord::Migration[8.1]
  def change
    create_table :programming_terms do |t|
      t.string :term
      t.text :meaning
      t.text :example
      t.string :category

      t.timestamps
    end
  end
end
