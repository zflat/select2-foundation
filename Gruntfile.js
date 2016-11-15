module.exports = function(grunt) {
  grunt.initConfig({
    sass: {
      options: {
        sourceMap: false,
        sourceComments: false
      },
      development: {
        options: {
          style: 'nested',
        },
        files: {
          'dist/select2-foundation-theme.css': 'src/sass/select2-foundation.scss'
        }
      },
      production: {
        options: {
          style: 'compressed',
        },
        files: {
          'dist/select2-foundation-theme.min.css': 'src/sass/select2-foundation.scss'
        }
      }
    },
    watch: {
      sass: {
        files: 'lib/assets/stylesheets/select2/**/*.scss',
        tasks: ['sass']
      },
    }
  });

  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');

  //Sass Task
  grunt.registerTask('sass-Dev', ['sass:development']);
  grunt.registerTask('sass-Build', ['sass:production']);

};
