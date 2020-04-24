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

#toppageへのCSS適用コードの追加
Rails.application.config.assets.precompile += %w( toppages/index.css )

#ユーザーの新規登録ページへのCSS適用コードの追加
Rails.application.config.assets.precompile += %w( users/new.css )

#ユーザー詳細ページへのCSS適用コードの追加
Rails.application.config.assets.precompile += %w( users/show.css )

#ユーザー編集ページへのCSS適用コードの追加
Rails.application.config.assets.precompile += %w( users/edit.css )

#ログインページにCSS適用コードの追加
Rails.application.config.assets.precompile += %w( sessions/new.css )

#スケジュール一覧ページに対するCSS適用コードの追加
Rails.application.config.assets.precompile += %w( schedules/index.css )

#スケジュール詳細ページに対するCSS適用コードの追加
Rails.application.config.assets.precompile += %w( schedules/show.css )

#スケジュール新規登録ページに対するCSS適用コードの追加
Rails.application.config.assets.precompile += %w( schedules/new.css )

#simple_calendarに対するCSS適用コードの追加
Rails.application.config.assets.precompile += %w( simple_calendar/_month_calendar.css )

