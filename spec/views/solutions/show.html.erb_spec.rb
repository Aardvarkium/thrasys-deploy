require 'spec_helper'

describe "solutions/show.html.erb" do
  before(:each) do
    @solution = assign(:solution, stub_model(Solution,
      :description => "MyText",
      :sort_order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
