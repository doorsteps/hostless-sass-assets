# Hostless::Sass::Assets

Sometimes we can't use the host (I'm looking at you cloudfront) especially when serving
fonts.

## Installation

Add this line to your application's Gemfile:

    gem 'hostless-sass-assets'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hostless-sass-assets

## Usage

`hostless-asset-url` will be the equivalent of `asset-url` except it will exclude the asset_host.