require 'csv'
require_relative '../app/models/style'
require_relative '../app/models/category'


def import_categories_from_csv
  CSV.foreach('db/csv/categories.csv', headers: true, header_converters: :symbol) do |row|
    Category.create(name: row[:cat_name])
  end
  puts "Categories Complete!"
end

def import_styles_from_csv
  CSV.foreach('db/csv/styles.csv', headers: true, header_converters: :symbol) do |row|
    category_id = row[:cat_id].to_i
    category = Category.find_by(id: category_id)
    Style.create(category_id: category.id,
                  name: row[:style_name]
                  )
  end
  puts "Styles Complete!"
end



import_categories_from_csv
import_styles_from_csv
