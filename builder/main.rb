require './zeitwerk_loader'
ZeitwerkLoader.setup(__dir__)

html_builder = Builder::Html.new
director = Director.new(html_builder)
director.construct

text_builder = Builder::Text.new
director = Director.new(text_builder)
director.construct
