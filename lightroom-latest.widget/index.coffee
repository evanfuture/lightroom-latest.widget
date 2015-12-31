options =
  keywords    : "fantastic cat" # space separated keywords, as used in Lightroom
  size        : "500" # default length in pixels of the longest side of the image.
  catalog     : "'/Users/USERNAME/Pictures/Lightroom/Lightroom\ Catalog.lrcat'" # absolute path to the catalog

# Execute the shell command.
command: """/usr/local/bin/node /usr/local/bin/lr-latest -u true -c #{options.catalog} -s #{options.size} #{options.keywords}"""

# Set the refresh frequency (milliseconds).
refreshFrequency: 600000

# Render the output.
render: (output) -> """
  <div id='images'>
  <div>
"""
update: (output, domEl) ->
  container = $(domEl).find('#images')
  $(container).html("")
  images = output.toString().split(",")
  wrap = (image) -> $(container).append """<img src="#{image}" />"""
  wrap image for image in images

# CSS Style
style: """
  margin:0
  padding:0
  width: 100%
  text-align: center
  top: 60px

  img
    width: #{options.size}px
    height: auto
    margin: 0 20px

"""
