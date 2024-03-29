# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.

Rails.application.config.assets.precompile << Proc.new { |path, fn| fn =~ /vendor\/assets\/images/ }

 
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join('lib')
Rails.application.config.assets.paths << Rails.root.join('lib', 'assets', 'fonts') 
Rails.application.config.assets.paths << Rails.root.join('vendor')
Rails.application.config.assets.paths << Rails.root.join('vendor/CSS')
Rails.application.config.assets.paths << Rails.root.join('vendor/JS')
Rails.application.config.assets.paths << Rails.root.join('vendor/scss')
# Precompile additional assets.

    

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
 
