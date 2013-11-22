"use strict"

chai = require('chai')
grunt = require('grunt')

assert = chai.assert
chai.Assertion.includeStack = true

# See http://visionmedia.github.io/mocha/ for Mocha tests.
# See http://chaijs.com/api/assert/ for Chai assertion types.

module.exports =
  "Test #toaster":
    "default": () ->
      assert.isTrue grunt.file.exists('test/tmp/default.js')
      assert.equal grunt.file.read('test/tmp/default.js'), grunt.file.read('test/expected/default.js')
    "beautified": () ->
      assert.isTrue grunt.file.exists('test/tmp/beautified.js')
      assert.equal grunt.file.read('test/tmp/beautified.js'), grunt.file.read('test/expected/beautified.js')
    "minified": () ->
      assert.isTrue grunt.file.exists('test/tmp/minified.js')
      assert.equal grunt.file.read('test/tmp/minified.js'), grunt.file.read('test/expected/minified.js')
