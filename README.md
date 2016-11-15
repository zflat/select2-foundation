# Select2-Foundation

select2 (v4) Theme for Zurb Foundation (v6)

[Examples](https://select2-foundation.herokuapp.com/ "select2-foundation examples")

## Installation

### Manual Install

In order to apply select2-foundation theme to your project, add the following files:

    <link rel="stylesheet" href="select2.css">
    <link rel="stylesheet" href="select2-foundation-theme.css">

### Bower
<pre><code>"dependencies": {
    "foundation-sites" : "^6.0.0",
    "select2" : "latest",
    "select2-foundation" : "https://github.com/egemensarica/select2-foundation.git#v6"
  }</code></pre>
  
### Rails (ruby gem)

Installation is similar to installing foundation-rails.

Add to your application's Gemfile:

      gem 'select2-foundation'

#### Configuration from generator

Run the generator for installation

      rails g select2_foundation:install

#### Manual configuration

Create a sass partial app/assets/stylesheets/_settings_select2.scss

Add to your app/assets/stylesheets/application.css:

      *= require select2/select2-foundation

### Apply the theme

Configure select2 To apply the theme by passing `foundation` to the theme option when initializing:

    $( "#dropdown" ).select2({
        theme: "foundation"
    });


## Development

### Styleguide rails app

Run the styleguide application found under `test/`

      bundle

      bundle exec rails s

Navigate to the root path to view the demo page.

### Building `dist`

Install build tools:

* npm
* grunt-cli

Run grunt tasks. See grunt help for available tasks.

      grunt sass

## Changelog

### 0.0.1
 * Initial sass

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
