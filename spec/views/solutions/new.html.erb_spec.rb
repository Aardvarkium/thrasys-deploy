require 'spec_helper'

describe "solutions/new.html.erb" do
  before(:each) do
    assign(:solution, stub_model(Solution,
      :description => "MyText",
      :sort_order => 1
    ).as_new_record)
  end

  it "renders new solution form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => solutions_path, :method => "post" do
      assert_select "textarea#solution_description", :name => "solution[description]"
      assert_select "input#solution_sort_order", :name => "solution[sort_order]"
    end
  end
end
