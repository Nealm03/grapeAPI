class Api < Grape::Api
	format :json
	error_format :json

	version 'v1', :using => :header, :vendor => "App"

	rescue_from Mongoid::Errors::DocumentNotFound do |error|
		rack_response({"error" => {"message" => "We didnt find what we were looking for"}}.to_json, 404)

	end

	mount Users::APIV1
end