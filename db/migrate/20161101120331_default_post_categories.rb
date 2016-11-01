class DefaultPostCategories < ActiveRecord::Migration
  def change
    Category.create!({
                        name: 'Bakery product',
                        tips: 'Bakery product',
                        new_post_text: 'Bakery product',
                        nav_text: 'Bakery product',
                        slug:'bakery'
                    })
    Category.create!({
                         name: 'Farm Product',
                         tips: 'Farm Product',
                         new_post_text: 'Farm Product',
                         nav_text: 'Farm Product',
                         slug:'farm'
                     })
    Category.create!({
                         name: 'Blog Post',
                         tips: 'Blog Post',
                         new_post_text: 'Blog Post',
                         nav_text: 'Blog Post',
                         slug:'blog_post'
                     })
  end
end
