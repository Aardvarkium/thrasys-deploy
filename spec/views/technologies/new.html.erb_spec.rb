require 'spec_helper'

describe "technologies/new.html.erb" do
  before(:each) do
    assign(:technology, stub_model(Technology,
      :description => "MyText",
      :sort_order => 1
    ).as_new_record)
  end

  it "renders new technology form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => technologies_path, :method => "post" do
      assert_select "textarea#technology_description", :name => "technology[description]"
      assert_select "input#technology_sort_order", :name => "technology[sort_order]"
    end
  end
end
