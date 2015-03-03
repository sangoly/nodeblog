module.exports = (grunt) ->

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        uglify: {
            target: {
                options: {
                    banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %>*/\n'
                    mangle: {
                        except: ['jQuery', 'Backbone', 'BootStrap']
                    }
                },
                files: [{
                    expand: true,
                    cwd: 'public/js/raw',
                    src: '*.js',
                    dest: 'public/js/min'
                    ext: '.min.js',
                    extDot: 'first'
                }]
            }
        },
        sass: {
            dist: {
                options: {
                    style: 'expanded'
                },
                files: [{
                    expand: true,
                    cwd: 'raw/public/css',
                    src: ['**/*.sass', '**/*.scss'],
                    dest: 'public/css',
                    ext: '.css'
                }]
            }
        },
        coffee: {
            dist: {
                options: {
                },
                files:[{
                    expand: true,
                    cwd: 'raw'
                    src: ['**/*.coffee'],
                    ext: '.js'
                }]
            }
        },
        watch: {
            wuglify: {
                files: ['public/js/raw/*.js'],
                tasks: ['uglify']
            },
            wsass: {
                files: ['raw/public/css/**/*.{scss, sass}'],
                tasks: ['sass']
            },
            wcoffee: {
                files: ['raw/**/*.coffee'],
                tasks: ['coffee']
            }
        }
    })

    grunt.loadNpmTasks('grunt-contrib-uglify')
    grunt.loadNpmTasks('grunt-contrib-sass')
    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.loadNpmTasks('grunt-contrib-watch')

    grunt.registerTask('default', ['uglify'])
