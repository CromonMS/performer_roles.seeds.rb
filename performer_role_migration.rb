# frozen_string_literal: true
# rails g model PerformerRole description:string ppl_code:string active:boolean

# Create Countries migration
class CreatePerformerRoles < ActiveRecord::Migration
  def change
    create_table :performer_roles do |t|
      t.string :description
      t.string :ppl_code
      t.boolean :active

      t.timestamps null: false

      add_index(:performer_roles, :description)
      add_index(:performer_roles, :ppl_code)
    end
  end
end
