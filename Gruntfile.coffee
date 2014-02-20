###
grunt-coffee-toaster-api
https://github.com/weareinteractive/grunt-coffee-toaster-api

Copyright (c) 2013 We Are Interactive
Licensed under the MIT license.
###

"use strict"

module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON "package.json"

    coffeelint:
      files: ["Gruntfile.coffee", "tasks/**/*.coffee", "test/**/*.coffee"]
      options:
        max_line_length:
          value: 200
          level: "error"

    clean:
      test:
        src: ["test/tmp/*"]

    toaster:
      default:
        bare: false
        minify: false
        folders: "test/fixtures":"fixtures"
        release: "test/tmp/default.js"
      beautified:
        bare: false
        minify:
          output:
            beautify: true
            indent_level: 2
        folders: "test/fixtures":"fixtures"
        release: "test/tmp/beautified.js"
      minified:
        bare: false
        minify: true
        callback: (contents, minified) ->
          contents = contents.replace(/}(?!catch|finally)(?=\w)/g, '};')
        folders: "test/fixtures":"fixtures"
        release: "test/tmp/minified.js"

    # Unit tests.
    mochacov:
      options:
        bail: true
        ui: 'exports'
        require: 'coffee-script'
        compilers: ['coffee:coffee-script']
        files: 'test/specs/**/*.coffee'
      all:
        options:
          reporter: 'spec'

    # Deployment
    bumper:
      options:
        push: false
        createTag: false
        tasks: ["default"]
        files: ["package.json"]
        updateConfigs: ["pkg"]


  # Actually load this plugin's task(s).
  grunt.loadTasks "tasks"

  # Load npm tasks.
  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks "grunt-mocha-cov"
  grunt.loadNpmTasks "grunt-bumper"

  # Default task.
  grunt.registerTask 'default', ['coffeelint']
  grunt.registerTask 'test', ['default', 'clean', 'toaster', 'mochacov']
