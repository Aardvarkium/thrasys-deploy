require 'spec_helper'

describe "solutions/index.html.erb" do
  before(:each) do
    assign(:solutions, [
      stub_model(Solution,
        :description => "MyText",
        :sort_order => 1
      ),
      stub_model(Solution,
        :description => "MyText",
        :sort_order => 1
      )
    ])
  end

  it "renders a list of solutions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
