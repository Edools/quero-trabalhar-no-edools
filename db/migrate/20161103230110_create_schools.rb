class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :owner_email
      t.string :pitch
      t.string :subdomain
      t.date :creation_date

      t.timestamps
    end
  end
end