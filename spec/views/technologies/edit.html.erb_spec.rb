require 'spec_helper'

describe "technologies/edit.html.erb" do
  before(:each) do
    @technology = assign(:technology, stub_model(Technology,
      :description => "MyText",
      :sort_order => 1
    ))
  end

  it "renders the edit technology form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => technologies_path(@technology), :method => "post" do
      assert_select "textarea#technology_description", :name => "technology[description]"
      assert_select "input#technology_sort_order", :name => "technology[sort_order]"
    end
  end
end
