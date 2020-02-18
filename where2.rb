require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
  # lat: ± 90
  # long: ± 180
@lat = rand(-90..90)
@long = rand(-180..180) 

  view "where2"
end