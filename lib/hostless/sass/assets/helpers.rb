module Hostless::Sass::Assets::Helpers
  include Sass::Rails::Helpers

  def hostless_asset_url(asset, kind)
    path = public_path(asset.value, kind.value)

    if ::Rails.application.config.action_controller.asset_host.present?
      path.sub!(::Rails.application.config.action_controller.asset_host, "")
    end

    Sass::Script::String.new(%Q{url(#{path})})
  end
end

module Sass::Script::Functions
  include Hostless::Sass::Assets::Helpers
end