module.exports = (grunt) ->
	grunt.initConfig
		pkg :
			grunt.file.readJSON 'package.json'	
		coffee:
			build:
				expand:true
				src : [ '*.coffee' ]
				ext :'.js'			
		watch:
			options:
      			livereload: true
			scripts:
				files: [ '*.coffee','Gruntfile.coffee' ]
				tasks: ["coffee"]
				option: 
					spawn: false

	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-contrib-watch'

	grunt.registerTask "default", ->
    	grunt.task.run [
    	  "coffee"
	      "watch"
    	]

    grunt.registerTask "build", ['coffee',"watch"]
