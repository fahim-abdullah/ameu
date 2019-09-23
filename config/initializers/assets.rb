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
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'javascripts') 
Rails.application.config.assets.precompile += %w( .js .es6 )
# Rails.application.config.assets.precompile += %w( new.css )

# Rails.application.config.assets.precompile += %w( countdown.jquery.min.js )
# Rails.application.config.assets.precompile += %w( timer.js )
# Rails.application.config.assets.precompile += %w( jquery.validate.min.js )
# Rails.application.config.assets.precompile += %w( mail-script.js )
# Rails.application.config.assets.precompile += %w( jquery-3.3.1.slim.min.js )
# Rails.application.config.assets.precompile += %w( swiper.min.js )
# Rails.application.config.assets.precompile += %w( jquery.nice-select.min.js )
# Rails.application.config.assets.precompile += %w( masonry.pkgd.min.js )
# Rails.application.config.assets.precompile += %w( jquery.magnific-popup.js )
# Rails.application.config.assets.precompile += %w( wow.min.js )
# Rails.application.config.assets.precompile += %w( custom.js )
# Rails.application.config.assets.precompile += %w( jquery.easing.min.js )
# Rails.application.config.assets.precompile += %w( waypoints.min.js )
# Rails.application.config.assets.precompile += %w( masonry.pkgd.js )
# Rails.application.config.assets.precompile += %w( swiper_custom.js )
# Rails.application.config.assets.precompile += %w( owl.carousel.min.js )
# Rails.application.config.assets.precompile += %w( bootstrap.min.js )
# Rails.application.config.assets.precompile += %w( particles.min.js )
# Rails.application.config.assets.precompile += %w( jquery.ajaxchimp.min.js )
# Rails.application.config.assets.precompile += %w( contact.js )
# Rails.application.config.assets.precompile += %w( jquery-1.12.1.min.js )
# Rails.application.config.assets.precompile += %w( aos.js )
# Rails.application.config.assets.precompile += %w( gmaps.min.js )
# Rails.application.config.assets.precompile += %w( popper.min.js )
# Rails.application.config.assets.precompile += %w( slick.min.js )
# Rails.application.config.assets.precompile += %w( jquery.form.js )
# Rails.application.config.assets.precompile += %w( jquery.smooth-scroll.min.js )
# Rails.application.config.assets.precompile += %w( jquery.counterup.min.js )