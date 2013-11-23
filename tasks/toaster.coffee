###
grunt-coffee-toaster-api
https://github.com/weareinteractive/grunt-coffee-toaster-api

Copyright (c) 2013 We Are Interactive
Licensed under the MIT license.
###

module.exports = (grunt) ->
  "use strict"

  # Please see the grunt documentation for more information regarding task and
  # helper creation: https://github.com/cowboy/grunt/blob/master/docs/toc.md

  # -----------------------------------------------------------------------------------------------
  # ~ Tasks
  # -----------------------------------------------------------------------------------------------

  grunt.registerMultiTask "toaster", "Grunt for Coffee Toaster Api.", ->

    options = this.data

    grunt.verbose.writeflags options, 'Options'

    # process template vars
    grunt.util._.each options.config, (value, key, list) ->
      if grunt.util._.isString(value) then list[key] = grunt.template.process(value)

    # toast it
    toast(process.cwd(), options)

    return if grunt.task.current.errorCount then false else true

  # -----------------------------------------------------------------------------------------------
  # ~ Helpers
  # -----------------------------------------------------------------------------------------------

  toast = (baseDir, options) ->
    Toaster = require("coffee-toaster-api")
    new Toaster(baseDir, options).build()
    return true
