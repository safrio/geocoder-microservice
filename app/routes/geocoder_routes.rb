class GeocoderRoutes < Application
  get '/' do
    geo_params = validate_with!(GeocoderParamsContract)

    result = Geocoder::CoordinatesByCityService.call(geo_params[:city])

    if result.success?
      status 201
      json result.coordinates
    else
      status 404
      error_response result.errors
    end
  end
end
