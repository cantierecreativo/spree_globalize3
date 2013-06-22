Spree Globalize3
================

Translatable Spree products, taxonomy, taxons with Globalize3.
This is intended for Spree v1.3.x, Spree v2 users should use
spree_i18n gem.

Install
-------

Gemfile:
```ruby
gem 'spree_globalize3',  github: 'cantierecreativo/spree_globalize3', branch: '1-3-stable'
```

```
rails g spree_globalize3:install
```

Product paths are localized with i18n_routing. Define your
translations in config/locales/:
```yaml
it:
  resources:
    products: 'prodotti'
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2013 Cantiere Creativo, released under the New BSD License
