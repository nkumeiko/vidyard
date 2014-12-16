require 'spec_helper'

describe Vidyard::Player do

  before do
    @vidyard = Vidyard::Client.new(ENV['API_TOKEN'])
    VCR.use_cassette('players') do
      @players = @vidyard.get_players()
    end
  end

  it 'should parse API response and expose certain attrs' do
    @player = @players.first
    expect(@player.uuid).to_not be_nil
    expect(@player.name).to_not be_nil
    expect(@player.url).to_not be_nil
  end

end
