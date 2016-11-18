class DefaultPostCategories < ActiveRecord::Migration
  def change
    Category.create!({
                        name: 'Bakery Products',
                        tips: 'Bakery Products',
                        new_post_text: 'Bakery product',
                        nav_text: 'Bakery Products',
                        slug:'bakery'
                    })
    Category.create!({
                         name: 'Farm Products',
                         tips: 'Farm Products',
                         new_post_text: 'Farm Product',
                         nav_text: 'Farm Products',
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
