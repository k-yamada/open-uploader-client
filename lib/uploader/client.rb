require "uploader/version"
require "rest-client"
require "json"

module Uploader
  class Client
    def initialize(url)
      if url[-1] == "/"
        url.chop!
      end
      @url = url
    end

    def create_get_rq_params(params)
      params_str = ""
      params.each do |key, value|
        params_str += "#{key}=#{value}&"
      end
      params_str[0..-2]
    end

    def get(path, params={})
      RestClient.get "#{@url}/#{path}?#{create_get_rq_params(params)}"
    end

    # get and return json
    def get_json(path, params={})
      resp = get(path, params)
      JSON.parse(resp)
    end

    def post(path, params={})
      RestClient.post("#{@url}/#{path}", params)
    end

    # post and return json
    def post_json(path, params={})
      resp = post(path, params)
      JSON.parse(resp)
    end

    def put(path, params={})
      RestClient.put("#{rails_server_url}#{path}", params)
    end

    def item_create(name, file_path)
      request = RestClient::Request.new(
        :method  => :post,
        :url     => "#{@url}/items/create",
        :payload => {
          :multipart => true,
          :name      => name,
          :file      => File.new(file_path)
        })
      resp = request.execute
      JSON.parse(resp)
    end

  end
end
