class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  
  get "/" do
    colors = Color.all
    colors.to_json(include: :shades)
  end

  get "/shades" do
    shades = Shade.all
    shades.to_json
  end

end
