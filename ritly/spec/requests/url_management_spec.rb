# Test each route to check for a 200 status (expect(response.status).to be_success or expect(response.status).to eq(200)) and that it renders the correct template.
require 'spec_helper'

describe "Urls Management" do

	describe "root path/new" do

		it "returns 200 status" do 
			get '/'
			expect(response.status).to eq(200)
		end

		it "renders form for new ritly" do
			get '/'
			expect(response).to render_template(:new)
		end

	end

	# describe "show" do

	# end

	# describe "edit" do

	# end

	# describe "index" do

	# end

	# describe "preview" do

	# end

	# describe "go/random_stirng" do

	# end


end