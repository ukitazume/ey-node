'use strict';

module.exports = function(grunt) {
  grunt.initConfig({
    jshint: {
      files: ['gruntfile.js', 'index.js'],
      options: {
        esnext: true,
        node: true,
        reporter: require('jshint-stylish')
      }
    },
    serve: {
    },
    watch: {
      files: ['<%= jshint.files %>']
    }
  });
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.registerTask("hint", ["jshint"]);
  grunt.registerTask('default', ["jshint", "watch"]);
};
