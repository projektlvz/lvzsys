# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w(community_engine.css score_setter.js selected_grade.css community_engine.js underscore.js custom_map.js gmaps_google.js tag-it/tag-it.css tag-it/tagit.ui-zendesk.css  tag-it/tag-it.js spinner.css)