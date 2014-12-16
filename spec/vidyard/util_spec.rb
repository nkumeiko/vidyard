require 'spec_helper'

describe Vidyard::Util do

  it 'should evaluate whether a string is singular' do
    expect(Vidyard::Util.singular?('videos')).to be(false)
    expect(Vidyard::Util.singular?('video')).to be(true)
  end

end

