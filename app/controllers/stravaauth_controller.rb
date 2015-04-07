class StravaauthController < ApplicationController
    def index
        auth_response = HTTParty.post('https://www.strava.com/oauth/token', query: { client_id: ENV['STRAVA_CLIENT_ID'], client_secret: ENV['STRAVA_CLIENT_SECRET'], code: params[:code] })
        #pp auth_response
        session[:strava_access_token] = auth_response.parsed_response["access_token"]
        redirect_to params[:state]
        #render plain: JSON.pretty_generate(authResponse)
    end
end
