require 'startback/web/magic_assets/rake_tasks'

Startback::Web::MagicAssets::RakeTasks.new(self, {
  :assets => Enspirit::Website::ASSETS_CONFIG,
  :target => Enspirit::Website::PUBLIC_ASSETS_FOLDER
})
