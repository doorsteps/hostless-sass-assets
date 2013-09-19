module Sprockets
  module SassFunctions

    def hostless_asset_path(asset, kind, append = Sass::Script::String.new(""))
      append = append.to_s.gsub("\"", "")
      path = public_path(asset.value, kind.value)
      if append.include?("?") && path.include?("?")
        append.gsub!("?", "")
      end
      path << append

      if ::Rails.application.config.action_controller.asset_host.present?
        path.sub!(::Rails.application.config.action_controller.asset_host, "")
      end

      Sass::Script::String.new(path)
    end

    def hostless_asset_url(asset, kind, append = Sass::Script::String.new(""))
      Sass::Script::String.new(%Q{url(#{hostless_asset_path(asset, kind, append).value})})
    end

  end

end
