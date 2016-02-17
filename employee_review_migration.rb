require './database_configuration.rb'

class EmployeeReviewsMigration < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.timestamps
    end

    create_table :employees do |t|
      t.references :departments
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.decimal :salary, precision: 10, scale: 2
      t.text :review
      t.integer :performance
    end
  end
end
