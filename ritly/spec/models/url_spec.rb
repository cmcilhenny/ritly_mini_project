require 'spec_helper'

describe Url do
  it 'should create a new instane of url if given valid attributes' do
  	url = Url.create(link: "www.url.com", random_string: "sfthdkeki")
  	url.should be_valid
  end

  it 'should create a new instance of url with a randomly generated string for random_string' do
  	url = Url.create(link: "www.url.com", random_string: "sfthdkeki")
  	url.should be_valid
  end

  describe 'link' do

  	it 'should not be empty' do
  		url = Url.create(random_string: "shdfjhdlsjfh")
  		url.should_not be_valid 
  	end
	end

end  
