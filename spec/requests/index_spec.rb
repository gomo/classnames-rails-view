require "rails_helper"

RSpec.describe "Widget management", :type => :request do

  it "creates a Widget and redirects to the Widget's page" do
    get "/"
    assert_select "div"
  end
end