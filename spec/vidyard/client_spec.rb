require 'spec_helper'
require 'dotenv'

describe Vidyard::Client do

  before do
    @vidyard = Vidyard::Client.new(ENV['API_TOKEN'])
  end

  it 'should return paginated resources' do
    VCR.use_cassette('videos_per') do
      response = @vidyard.get_videos(:per_page => 5)
      expect(response['videos'].count).to eq(5)
    end
  end

  %w(accounts players videos).each do |resource|
    it "should return all #{resource}" do
      VCR.use_cassette(resource) do
        response = eval("@vidyard.get_#{resource}()")
        expect(response).to_not be_empty
      end
    end
  end

end

