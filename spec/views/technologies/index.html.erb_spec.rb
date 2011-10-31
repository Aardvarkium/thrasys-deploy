require 'spec_helper'

describe "technologies/index.html.erb" do
  before(:each) do
    assign(:technologies, [
      stub_model(Technology,
        :description => "MyText",
        :sort_order => 1
      ),
      stub_model(Technology,
        :description => "MyText",
        :sort_order => 1
      )
    ])
  end

  it "renders a list of technologies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
