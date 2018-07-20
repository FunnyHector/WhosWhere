# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

# Precompile depot assets
depot_js_assets = Dir.glob("#{Rails.root}/app/assets/javascripts/depot/**/*")
depot_css_assets = Dir.glob("#{Rails.root}/app/assets/stylesheets/depot/**/*")

depot_assets = depot_js_assets + depot_css_assets
Rails.application.config.assets.precompile += depot_assets

# Precompile who's here assets
whos_here_js_assets = Dir.glob("#{Rails.root}/app/assets/javascripts/whos_here/**/*")
whos_here_css_assets = Dir.glob("#{Rails.root}/app/assets/stylesheets/whos_here/**/*")

whos_here_assets = whos_here_js_assets + whos_here_css_assets
Rails.application.config.assets.precompile += whos_here_assets
