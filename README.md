# grunt-coffee-toaster-api

[![Build Status](https://travis-ci.org/weareinteractive/grunt-coffee-toaster-api.png?branch=master)](https://travis-ci.org/weareinteractive/grunt-coffee-toaster-api)
[![Dependency Status](https://gemnasium.com/weareinteractive/grunt-coffee-toaster-api.png)](https://gemnasium.com/weareinteractive/grunt-coffee-toaster-api)
[![NPM version](https://badge.fury.io/js/grunt-coffee-toaster-api.png)](http://badge.fury.io/js/grunt-coffee-toaster-api)

> Grunt for [Coffee Toaster Api](https://github.com/weareinteractive/node-coffee-toaster-api).

**DEPRICATION NOTICE:**

> This project hasn't been maintained and updated for a while now. 
> Please use as is and send PRs if you need changes.

## Getting Started

This plugin requires Grunt `~0.4.1`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-coffee-toaster-api --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-coffee-toaster-api');
```

## The "toaster" Task

*Run this task with the `grunt toaster` command.*

> Coffee Toaster is a minimalist build system for CoffeeScript, made for those who dare to use class definitions in CoffeeScript while being able to easily inherit from external files. The system is powered with import directives that uses wildcards facilities, exposed scopes, excluded files filter options and a packaging system that can inject your folders-as-namespaces to all your classes based on where they are under your src folder.

## Options

All options are directly passed to *ExtendScript Toaster*!
Please see the [Coffee Toaster Api documentation](https://github.com/weareinteractive/node-coffee-toaster-api) for all available options.

## Usage Examples

Compile sources from `src/app` to `bin/app.js`.

```javascript
grunt.initConfig({
  toaster: {
    dist: {
      bare: false,
      minify: false,
      folders: { "src/app":"app" },
      release: "bin/app.js"
    }
  }
});

grunt.loadNpmTasks('grunt-coffee-toaster-api');

grunt.registerTask('default', ['toaster']);
```

## Contributing
[![I Love Open Source](http://www.iloveopensource.io/images/logo-lightbg.png)](http://www.iloveopensource.io/projects/52ee312487659fce66000050)

In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
Copyright (c) We Are Interactive under the MIT license.
