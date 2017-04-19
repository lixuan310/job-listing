class AddWorkplaceAndWebsiteToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :workplace, :string
    add_column :jobs, :website, :string
  end
end
