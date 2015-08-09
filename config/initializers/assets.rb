# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Sets live compilation, uh I think this is good
Rails.application.config.assets.compile = true


# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.

# Add in all css & js files to be precompiled
#Rails.application.config.assets.precompile += %w( bootstrap.min.css )
#Rails.application.config.assets.precompile += %w( jumbotron.css )
#Rails.application.config.assets.precompile += %w( custom.css )
#
#Rails.application.config.assets.precompile += %w( script.js )
#Rails.application.config.assets.precompile += %w( bootstrap.min.js )
#Rails.application.config.assets.precompile += %w( ie10-viewport-bug-workaround.js )
#Rails.application.config.assets.precompile += %w( query.js )


# Instead of doing individually, handle with regex
Rails.application.config.assets.precompile += [/.*\.js.*/,/.*\.s?css/]
