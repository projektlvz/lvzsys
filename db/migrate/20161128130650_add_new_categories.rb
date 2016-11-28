class AddNewCategories < ActiveRecord::Migration
  def change
    Category.create!({
                        name: 'Recipes',
                        tips: 'Recipes',
                        new_post_text: 'Recipes',
                        nav_text: 'Recipes',
                        slug:'recipes'
                    })
    Category.create!({
                        name: 'Reviews',
                        tips: 'Reviews',
                        new_post_text: 'Reviews',
                        nav_text: 'Reviews',
                        slug:'reviews'
                    })
  end
end
