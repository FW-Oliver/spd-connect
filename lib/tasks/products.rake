namespace :products do
  desc "Import products from CSV"

  task import: :environment do
    require "csv"

    Product.destroy_all

    CSV.foreach(Rails.root.join("db/products.csv"), headers: true) do |row|
      Product.create!(
        name: row["name"],
        home_location: row["home_location"],
        category: row["category"],
        aliases: row["aliases"],
        active: row["active"]
      )
    end

    puts "Imported #{Product.count} products."
  end
end
