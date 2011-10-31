require 'spec_helper'

describe "technologies/show.html.erb" do
  before(:each) do
    @technology = assign(:technology, stub_model(Technology,
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
