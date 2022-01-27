class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/shades" do
    shades = Shade.all
    shades.to_json
  end

  get "/colors" do
    colors = Color.all
    colors.to_json(include: :shades)
  end

  delete '/shades/:id' do
    shade = Shade.find(params[:id])
    shade.destroy
    shade.to_json
  end

  post '/shades' do
    shade = Shade.create(
      hex_code: params[:hex_code],
      color_id: params[:color_id]
    )
    shade.to_json
  end
end
