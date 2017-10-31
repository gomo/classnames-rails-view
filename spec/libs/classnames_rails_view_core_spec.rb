require "rails_helper"

describe "Classnames::Rails::View::Core" do
  it "generate simple class attributes" do
    core = Classnames::Rails::View::Core.new
    expect(core.exec('foo', 'bar')).to eq('foo bar')
  end
end 