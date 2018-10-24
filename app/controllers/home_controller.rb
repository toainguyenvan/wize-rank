require 'net/http'
require 'net/https'
require 'uri'
require 'json'

class HomeController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def switch_lang
        lang = get_lang_header(params[:id])
        render json: lang.to_json
    end

    def run
        params = get_params
        lang = get_lang_header(params[:lang_id])
        uri = URI.parse('https://run.glot.io/languages/' + lang[:name] + '/latest')
        header = { 
            'Authorization' => 'Token 323662bd-7641-468a-9b1f-541a8d1693d7',
            'Content-type' => 'application/json' 
        }

        payload = {
            files: [{
                name: lang[:file_name],
                content: get_params[:data]
            }]
        }

        # Create the HTTP objects
        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true
        request = Net::HTTP::Post.new(uri.request_uri, header)
        request.body = payload.to_json

        # Send the request
        response = https.request(request)
        render json: response.body
    end

    def get_params
        params.permit(:data, :lang_id)
    end
end