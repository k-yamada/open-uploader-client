require 'pp'
require 'spec_helper'
include Uploader

module Uploader
  ASSETS = File.dirname(__FILE__) + "/../../../assets"
  describe Client do

    before(:each) do
      @client = Client.new("http://localhost:3000")
    end

    describe "#item_create" do
      it "create item" do
        @client.item_create("item1", ASSETS + "/CyanSquare.png")
      end
    end

  end
end
