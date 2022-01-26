class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  
  get "/colors" do
    colors = Color.all
    colors.to_json(include: :shades)
  end

  get "/shades" do
    shades = Shade.all
    shades.to_json
  end

  delete '/shades/:id' do
    # find the review using the ID
    shade = Shade.find(params[:id])
    # delete the review
    shade.destroy
    # send a response with the deleted review as JSON
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
